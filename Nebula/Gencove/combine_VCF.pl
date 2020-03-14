use warnings;
use strict;
use diagnostics;

#copied and modified from https://github.com/cwarden45/DTC_Scripts/blob/master/Helix_Mayo_GeneGuide/IBD_Genetic_Distance/combine_VCF.pl'

#my $individual_ID = "CDW";
#my $individual_gender = 1;#male
#my $sample_name = "Color.GATK";
#my $VCF_Individual = "../Color/BWA_MEM.hg19.gatk.gVCF";
#my $VCF_prev = "1000_genomes_20140502_plus_2-SNP-chip.vcf";
#my $VCF_Combined = "1000_genomes_20140502_plus_2-SNP-chip_plus_Color-BWA-MEM-lcWGS.vcf";
#my $prev_ped = "1000_genomes_20140502_plus_2-SNP-chip.ped";
#my $updated_ped = "1000_genomes_20140502_plus_2-SNP-chip_plus_Color-BWA-MEM-lcWGS.ped";
#my $GATK4_flag = 1;
#my $large_flag = 1;

#my $individual_ID = "CDW";
#my $individual_gender = 1;#male
#my $sample_name = "Nebula.full.Gencove";
#my $VCF_Individual = "Gencove_Nebula-human_provided_impute-vcf.vcf";
#my $VCF_prev = "1000_genomes_20140502_plus_2-SNP-chip.vcf";
#my $VCF_Combined = "1000_genomes_20140502_plus_2-SNP-chip_plus_Nebula-Gencove-re.vcf";
#my $prev_ped = "1000_genomes_20140502_plus_2-SNP-chip.ped";
#my $updated_ped = "1000_genomes_20140502_plus_2-SNP-chip_plus_Nebula-Gencove-re.ped";
#my $GATK4_flag = 1;
#my $large_flag = 1;

#my $individual_ID = "CDW";
#my $individual_gender = 1;#male
#my $sample_name = "Nebula.Gencove.down2";
#my $VCF_Individual = "Gencove_Nebula-human_downsample_2x_impute-vcf.vcf";
#my $VCF_prev = "1000_genomes_20140502_plus_2-SNP-chip.vcf";
#my $VCF_Combined = "1000_genomes_20140502_plus_2-SNP-chip_plus_Nebula-Gencove-down2.vcf";
#my $prev_ped = "1000_genomes_20140502_plus_2-SNP-chip.ped";
#my $updated_ped = "1000_genomes_20140502_plus_2-SNP-chip_plus_Nebula-Gencove-down2.ped";
#my $GATK4_flag = 1;
#my $large_flag = 1;

##provided .vcf has a chromosome formatting issue that would have to be fixed
#my $individual_ID = "Bastu";
#my $individual_gender = 0;#female
#my $sample_name = "basepaws.Gencove.down50";
#my $VCF_Individual = "Gencove_basepaws-cat_downsample_50x_impute-vcf.vcf";
#my $VCF_prev = "../../Bastu_Cat_Genome/HCWGS0003.g.vcf";
#my $VCF_Combined = "Bastu_plus_Gencove-down50x.vcf";
#my $prev_ped = "Bastu.ped";
#my $updated_ped = "Bastu_plus_Gencove-down50x.ped";
#my $GATK4_flag = 1;
#my $large_flag = 0;

#chromosome formatting matches, but there is an issue with 1st file (since it isn't actually the 1000 Genomes SNP chip genotypes)
#my $individual_ID = "Bastu";
#my $individual_gender = 0;#female
#my $sample_name = "basepaws.Gencove.down50";
#my $VCF_Individual = "Gencove_basepaws-cat_downsample_50x_impute-vcf.vcf";
#my $VCF_prev = "../../Bastu_Cat_Genome/felCat9.gatk.gVCF";
#my $VCF_Combined = "Bastu-felCat9-GATK_plus_Gencove-down50x.vcf";
#my $prev_ped = "Bastu.ped";
#my $updated_ped = "Bastu-felCat9-GATK_plus_Gencove-down50x.ped";
#my $GATK4_flag = 1;
#my $large_flag = 0;

#start with quality-filtered Gencove file, and try to add full WGS GATK genotype (also, I needed to have run VariantFiltration to add a "PASS" status)
#I manually created the combined .ped file, but the code otherwise worked
#my $individual_ID = "Bastu";
#my $individual_gender = 0;#female
#my $sample_name = "felCat9.GATK";
#my $VCF_Individual = "../../Bastu_Cat_Genome/felCat9.gatk.flagged.gVCF";
#my $VCF_prev = "Gencove_basepaws-cat_downsample_50x_impute-vcf-PASS.vcf";
#my $VCF_Combined = "Bastu-felCat9-GATK_plus_Gencove-down50x.vcf";
#my $prev_ped = "Bastu.ped";
#my $updated_ped = "Bastu-felCat9-GATK_plus_Gencove-down50x.ped";
#my $GATK4_flag = 1;
#my $large_flag = 1;

my $individual_ID = "Bastu";
my $individual_gender = 0;#female
my $sample_name = "felCat9.GATK";
my $VCF_Individual = "../../Bastu_Cat_Genome/felCat9.gatk.flagged.gVCF";
my $VCF_prev = "Gencove_basepaws-cat_downsample_100x_impute-vcf-PASS.vcf";
my $VCF_Combined = "Bastu-felCat9-GATK_plus_Gencove-down100x.vcf";
my $prev_ped = "Bastu.ped";
my $updated_ped = "Bastu-felCat9-GATK_plus_Gencove-down100x.ped";
my $GATK4_flag = 1;
my $large_flag = 1;


#add row at bottom of .ped file

open(OUTPUTFILE, ">$updated_ped") || die("Could not open $updated_ped!");

my $line_count=0;
open(INPUTFILE, $prev_ped) || die("Could not open $prev_ped!");
while (<INPUTFILE>){
	$line_count++;
	my $line = $_;
	chomp $line;
	if($line_count > 1){
		my @line_info = split("\t",$line);
		my $familyID = $line_info[0];
		my $sampleID = $line_info[1];
		my $patID = $line_info[2];
		my $matID = $line_info[3];
		my $gender = $line_info[4];
		my $phenotype = -9;

		print OUTPUTFILE "$familyID\t$sampleID\t$patID\t$matID\t$gender\t$phenotype\n";

	}#end if($line_count > 1)
}#end while (<INPUTFILE>)
			
close(INPUTFILE);

print OUTPUTFILE "$individual_ID\t$sample_name\t0\t0\t$individual_gender\t-9\n";

close(OUTPUTFILE);

#define positions to combine
my %individual_hash;

if($large_flag == 1){
	print "Only save lines already in larger file\n";
	
	open(INPUTFILE, $VCF_prev) || die("Could not open $VCF_prev!");
	while (<INPUTFILE>){
		$line_count++;
		my $line = $_;
		chomp $line;
		if (!($line =~ /^##/)){
			my @line_info = split("\t",$line);
			my $chr = $line_info[0];
			my $pos = $line_info[1];
			my $ref = $line_info[3];	
			my $alt = $line_info[4];

			$chr =~ s/^chr//;

			if(!($line =~ /^#/)){			
				my $varID = "$chr:$pos:$ref:$alt";
				$individual_hash{$varID}="";
			}#end else
		}#end if (!($line =~ /^##/))
	}#end while (<INPUTFILE>)
				
	close(INPUTFILE);	
}#end if($large_flag == 1)

print "Reading individual VCF...\n";

$line_count=0;
open(INPUTFILE, $VCF_Individual) || die("Could not open $VCF_Individual!");
while (<INPUTFILE>){
	$line_count++;
	my $line = $_;
	chomp $line;


	if(!($line =~ /^#/)){
		#print "$line\n";

		my @line_info = split("\t",$line);
		my $chr = $line_info[0];
		my $pos = $line_info[1];
		my $ID = $line_info[2];
		my $ref = $line_info[3];	
		my $alt = $line_info[4];
		my $qual = $line_info[5];
		my $filter = $line_info[6];
		my $info = $line_info[7];
		my $format = $line_info[8];
		my $geno = $line_info[9];
		
		$chr =~ s/^chr//;
		
		if($GATK4_flag == 1){
		
			if($alt eq "<NON_REF>"){
				$alt = $ref;
			}else{
				$alt =~ s/,<NON_REF>//;
			}
			
			$geno = substr($line_info[9],0,3);
			
			if(($geno eq "")|($geno eq "   ")){
				$geno="./.";
				print "Corrected empty geno value\n";
			}elsif(!$geno =~ /\//){
				print "Wrong formatting for |$geno|\n";
				exit;
			}
		}#end if(($GATK4_flag == 1)&($alt eq "<NON_REF>"))

		my $varID = "$chr:$pos:$ref:$alt";
		#print "$varID\n";
		
		if($large_flag == 1){
			unless(exists($individual_hash{$varID})){
				$filter = "FAIL";
			}#end unless(exists($individual_hash{$varID}))
		}#end if($large_flag == 1)
		
		if($filter eq "PASS"){
			$individual_hash{$varID}=$geno;
		}#end if($filter eq "PASS")
	}#end if(!($line =~ /^#/))
}#end while (<INPUTFILE>)
			
close(INPUTFILE);

print "There are ".scalar(keys %individual_hash)." PASS variants to check in the 1st file\n";

#define indices to count, output allele frequencies

print "Reading and appending 1000 Genomes VCF...\n";

open(OUTPUTFILE, ">$VCF_Combined") || die("Could not open $VCF_Combined!");

my @output_indices;


open(INPUTFILE, $VCF_prev) || die("Could not open $VCF_prev!");
while (<INPUTFILE>){
	my $line = $_;
	chomp $line;
	if (!($line =~ /^##/)){
		my @line_info = split("\t",$line);
		my $chr = $line_info[0];
		my $pos = $line_info[1];
		my $ID = $line_info[2];
		my $ref = $line_info[3];	
		my $alt = $line_info[4];
		my $qual = $line_info[5];
		my $filter = $line_info[6];
		my $info = $line_info[7];
		my $format = $line_info[8];

		$chr =~ s/^chr//;

		if(!($line =~ /^#/)){			
			my $varID = "$chr:$pos:$ref:$alt";
			
			if(exists($individual_hash{$varID})){
				if($individual_hash{$varID} ne ""){
					my $extra_geno = $individual_hash{$varID};
					print OUTPUTFILE "$line\t$extra_geno\n";
				}#end if($individual_hash{$varID} ne "")
			}#end if(exists($sample_hash{$sample}))		
		}else{
			print OUTPUTFILE "$line\t$sample_name\n";
		}#end else
	}#end if (!($line =~ /^##/))
}#end while (<INPUTFILE>)
			
close(INPUTFILE);
close(OUTPUTFILE);

exit;