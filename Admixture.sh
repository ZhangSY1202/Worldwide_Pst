#admixture

for k in {1,2,3,4,5,6,7,8};
do 
admixture --cv=10 LD16-3.bed $k | tee log${k}.out;
done
