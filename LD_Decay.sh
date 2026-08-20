# LD decay analysis for each regional population
PopLDdecay -InVCF pop1.filter.snps.recode.vcf -OutStat pop1.stat.gz -SubPop pop1.txt

PopLDdecay -InVCF pop2.filter.snps.recode.vcf -OutStat pop2.stat.gz -SubPop pop2.txt

PopLDdecay -InVCF pop3.filter.snps.recode.vcf -OutStat pop3.stat.gz -SubPop pop3.txt

PopLDdecay -InVCF pop4.filter.snps.recode.vcf -OutStat pop4.stat.gz -SubPop pop4.txt

PopLDdecay -InVCF pop5.filter.snps.recode.vcf -OutStat pop5.stat.gz -SubPop pop5.txt

PopLDdecay -InVCF pop6.filter.snps.recode.vcf -OutStat pop6.stat.gz -SubPop pop6.txt

PopLDdecay -InVCF pop7.filter.snps.recode.vcf -OutStat pop7.stat.gz -SubPop pop7.txt

PopLDdecay -InVCF pop8.filter.snps.recode.vcf -OutStat pop8.stat.gz -SubPop pop8.txt


# LD decay analysis across multiple regional population
perl PopLDdecay/bin/Plot_MultiPop.pl  -inList  multi.list  -output 16multi -keepR