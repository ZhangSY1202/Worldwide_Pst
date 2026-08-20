#Fst

sample_files=("pop1.txt" "pop2.txt" "pop3.txt" "pop4.txt" "pop5.txt" "pop6.txt" "pop7.txt" "pop8.txt")
num_samples=${#sample_files[@]}
if ((num_samples < 2));then
    echo "Error: Not enough sample files.At least two are required."
    exit 1
fi
for ((i=0;i<num_samples; i++ ));do
    for ((j=i+1;j<num_samples; j++ ));do
        sample1="${sample_files[i]}"
        sample2="${sample_files[j]}"
        output="fst.${sample1%.sample.list.txt}.${sample2%.sample.list.txt}"
        echo "Running vcftools for $sample1 and $sample2,output file: $output"
        if [ ! -f "$sample1"];then
            echo "Error: File $sample1 does not exist"
            continue
        fi
        if [ ! -f "$sample2" ];then
            echo "Error: File $sample2 does not exist"
            continue
        fi
        vcftools --vcf geno16.filter.snps.recode.vcf --fst-window-size 5000 --fst-window-step 5000 --weir-fst-pop "$sample1" --weir-fst-pop "$sample2" --out "fst.${sample1%.sample.list.txt}.${sample2%.sample.list.txt}"
    done
done