#treemix
for m in {1..5}
 do
 for i in {1..20}
  do
  treemix -se -bootstrap -i LD16_GEO.treemix.frq.gz -o LD16.treemix.${i}.${m} -m ${m} -k 500 -root Outgroup -noss
  done
done


#OptM
library(OptM)
linear = optM("./output")
plot_optM(linear)
dev.off()

#plot
source("plotting_funcs.R")
plot_tree("TreeMix")
dev.off()