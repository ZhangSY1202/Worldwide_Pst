#bi-allic
vcftools --vcf geno16.filter.snps.recode.vcf --recode-INFO-all --max-alleles 2 --min-alleles 2 --out 16_bi --recode

#Dsuite
Dsuite Dtrios 16_bi.recode.vcf.gz pop.file -t tree.nwk