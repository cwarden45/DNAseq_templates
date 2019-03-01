Personal Thoughts
-----------------

***My regional ancestry is mostly European***: 42% England / Wales / Northwestern Europe, 22% Germanic Europe, 21% Ireland & Scotland, 8% Norway, 3% Sweden, 2% Benin/Togo, 2% Ivory Coast / Ghana, and 1% European Jewish.

My maternal (relatively) recent ancestry is from Arkanasas (near Memphis) and Tennessee, so the "Additional Community" result of "Northern Arkansas & Middle Tennessee Settlers" was interesting.  However, I think this would be more useful as a sort of free analysis for exported raw data (rather than purchasing another chip).

I also found some additional family members that had AncestryDNA data, but not 23andMe data.  However, I think recommending people deposit their data into public databases to search for family members is preferable than having everybody purchase both 23andMe and AncestryDNA tests to search both sets of customers for family members.  

I also ordered the version of AncestryDNA that provides some trait information, and I filled out the questions for the "Personal Discoveries Project."  The Traits results are a little hard to view all at once, but I think providing the regional ancestry variation for each trait was interesting.

I uploaded my AncestryDNA data and reports to [my PGP page](https://my.pgp-hms.org/profile/hu832966), if anybody wants to look into those.

***So, overall, I wouldn't push too hard for people to have an additional test (and I'm not purchasing the additional Ancestry membership), but I think it provides some potentially interesting information.  For an extra $10, I think the extra traits results are worth it.***

Raw Data File Conversion
-----------

I actually had an earlier [blog post](http://cdwscience.blogspot.com/2013/12/additional-analysis-of-ancestrydna-data.html) where I did some file conversion and analysis for somebody else.  So, that was one less thing that I had to write for my own data!

Just in case there have been some more recent chip changes, I created a new Venn Diagram with my own data, and (similar to my [Genes for Good](https://github.com/cwarden45/DTC_Scripts/tree/master/Genes_for_Good) data) I tested making HLA Predictions below.

[Genes for Good](https://github.com/cwarden45/DTC_Scripts/tree/master/Genes_for_Good) HLA Analysis Results
-----------

### For Research Purposes Only! ###

I had the V3 23andMe chip for my sample.  My AncestryDNA chip had 667,884 probes.

Below, my HLA-A, HLA-B, and HLA-C results are robust with the different genotyping and sequencing technologies, but my HLA-D type assignments change.

<table>
  <tbody>
    <tr>
      <th align="center">Marker</th>
      <th align="center">SNP2HLA</th>
      <th align="center">HIBAG</th>
      <th align="center">bwakit</th>
      <th align="center">HLAminer</th>
    </tr>
    <tr>
      <td align="center">HLA-A</td>
      <td align="left">A*01, A*02<br/>(23andMe)<br/><br/>A*01, A*02<br/>(Genes for Good)<br/><br/>A*01, A*02<br/>(AncestryDNA)</td>
      <td align="left">A*01, A*02<br/>(23andMe)<br/><br/>A*01, A*02<br/>(AncestryDNA)</td>
      <td align="left">A*01, A*02<br/>(Genos Exome BWA-MEM)</td>
      <td align="left">A*01, A*02<br/>(Genos Exome BWA-MEM)<br/><br/>A*01, A*68<br/>(Genos Exome BWA)</td>
     </tr>
    <tr>
      <td align="center">HLA-B</td>
      <td align="left">B*08, B*40<br/>(23andMe)<br/><br/>B*08, B*40<br/>(Genes for Good)<br/><br/>B*08, B*40<br/>(AncestryDNA)</td>
      <td align="left">B*08, B*40<br/>(23andMe)<br/><br/>B*08, B*40<br/>(AncestryDNA)</td>
      <td align="left">B*08, B*40<br/>(Genos Exome BWA-MEM)</td>
      <td align="left">B*08, B*40<br/>(Genos Exome BWA-MEM)<br/><br/>B*08, B*41<br/>(Genos Exome BWA)</td>
     </tr>
    <tr>
      <td align="center">HLA-C</td>
      <td align="left">C*03, C*07<br/>(23andMe)<br/><br/>C*03, C*07<br/>(Genes for Good)<br/><br/>C*03, C*07<br/>(AncestryDNA)</td>
      <td align="left">C*03, C*07<br/>(23andMe)<br/><br/>C*03, C*07<br/>(AncestryDNA)</td>
      <td align="left">C*03, C*07<br/>(Genos Exome BWA-MEM)</td>
      <td align="left">C*03, C*07<br/>(Genos Exome BWA-MEM)<br/><br/>C*03, C*07<br/>(Genos Exome BWA)</td>
     </tr>
    <tr>
      <td align="center">HLA-DRB1</td>
      <td align="left">DRB1*01, DRB1*03<br/>(23andMe)<br/><br/>DRB1*01, DRB1*03<br/>(Genes for Good)<br/><br/>DRB1*01, DRB1*03<br/>(AncestryDNA)</td>
      <td align="left">DRB1*03, DRB1*11<br/>(23andMe)<br/><br/>DRB1*03, DRB1*15<br/>(AncestryDNA)</td>
      <td align="left">DRB1*04, DRB1*04<br/>(Genos Exome BWA-MEM)</td>
      <td align="left">DRB1*01, DRB1*15<br/>(Genos Exome BWA-MEM)<br/><br/>DRB1*01, DRB1*15<br/>(Genos Exome BWA)</td>
     </tr>
     <tr>
      <td align="center">HLA-DQA1</td>
      <td align="left">DQA1*05, DQA1*05<br/>(23andMe)<br/><br/>DQA1*01, DQA1*05<br/>(Genes for Good)<br/><br/>DQA1*01, DQA1*05<br/>(AncestryDNA)</td>
      <td align="left">DQA1*05, DQA1*05<br/>(23andMe)<br/><br/>DQA1*01, DQA1*05<br/>(AncestryDNA)</td>
      <td align="left">DQA1*03, DQA1*03<br/>(Genos Exome BWA-MEM)</td>
      <td align="left">DQA1*02, DQA1*03<br/>(Genos Exome BWA-MEM)<br/><br/>DQA1*02, DQA1*03<br/>(Genos Exome BWA)</td>
     </tr>
     <tr>
      <td align="center">HLA-DQB1</td>
      <td align="left">DQB1*02, DQB1*05<br/>(23andMe)<br/><br/>DQB1*02, DQB1*02<br/>(Genes for Good)<br/><br/>DQB1*02, DQB1*05<br/>(AncestryDNA)</td>
      <td align="left">DQB1*02, DQB1*03<br/>(23andMe)<br/><br/>DQB1*03, DQB1*06<br/>(AncestryDNA)</td>
      <td align="left">DQB1*03, DQB1*03<br/>(Genos Exome BWA-MEM)</td>
      <td align="left">DQB1*02, DQB1*03<br/>(Genos Exome BWA-MEM)<br/><br/>DQB1*02, DQB1*03<br/>(Genos Exome BWA)</td>
     </tr>
</tbody>
</table>

23andMe reports that I lack the [rs2187668](https://www.ncbi.nlm.nih.gov/snp/rs2187668) variant for *HLA-DQ2.5*, but I carry *both* copies of the C [rs7454108](https://www.ncbi.nlm.nih.gov/snp/rs7454108) variant for **HLA-DQ8**.  Unlike the methods described above, this uses a methodology similar to [Monsuur et al. 2008](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0002270) (as well as other citations provided within 23andMe).  However, 23andMe also provided [this helpful GeneReviews reference](https://www.ncbi.nlm.nih.gov/books/NBK1727/), which defines *DQ2-positive* as "HLA-DQA1\*0501/0505 and
HLA-DQB1\*0201/0202" and **DQ8-positive** as "HLA-DQA1\*03 and
HLA-DQB1\*0302", and indicates DQ2/DQ2.5 (the one 23andMe says I don't have) is the more important haplotype.

FYI, you can download HLA reference sequences from this ftp: ftp://ftp.ebi.ac.uk/pub/databases/ipd/imgt/hla/fasta/ <br />
* With [BLAT](https://genome.ucsc.edu/cgi-bin/hgBlat?command=start), those 2 variant sites used by 23andMe are still intronic / intergenic for DQA1\*05:01 and DQB1\*02:01/\*02:02 (although it looks like it can be a coding overlap for *DQA1\*05:05*, for *rs2187668*, which is the most significant, validated association in [Dubois et al. 2010](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2847618/)).<br />
* You can also do things like a [BLAST](https://blast.ncbi.nlm.nih.gov/Blast.cgi) search with the primers in [Table S1](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0002270#s5) of the Monsuur et al. 2008 publication.  There is also a BLAST interface from [IPD-IMGT/HLA](https://www.ebi.ac.uk/ipd/imgt/hla/blast.html).

In terms of the updates that I added on 2/28, I would like to thank [Susan Neuhausen](https://www.cityofhope.org/people/neuhausen-susan) for discussions that encouraged me to take more time review the literature for these results more carefully.
