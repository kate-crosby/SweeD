
ten_thousand <- read.table("out_10000_to_R.txt", header=TRUE)

library(qqman)
library(extrafont)
loadfonts()
names(ten_thousand)=c('CHR', 'BP', "P", "Alpha")

df <- read.table("cluster2_average10", header = TRUE, sep="\t")

names(df)=c('CHR', 'BP', "bfs", "P")

par(mfrow=c(1,2))
manhattan(ten_thousand, ylim = c(0, 400), suggestiveline = F, genomewideline = F, 
          col = c("yellow3", "yellow"), logp=FALSE,
          ylab="Composite Likelihood of Yellow SS group", 
          cex=1.5, family="Helvetica Neue Thin", main ="Scans for positive selection post80s")

manhattan(df, ylim = c(0, 50), suggestiveline = F, genomewideline = F, col = c("yellow3", "yellow"), logp=FALSE,
          ylab=expression("log"[10]*" Bayes Fators yellow SS group"), cex=1.5, 
          family="Helvetica Neue Thin", main="Average of 10 Bayenv runs")


