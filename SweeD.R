library(qqman)

ten_thousand.1 <- read.table("out_10000_cluster1_to_R.txt", header=TRUE)
names(ten_thousand.1)=c('CHR', 'BP', "P", "Alpha")

df.1 <- read.table("cluster1_averaged", header = TRUE, sep="\t")

names(df.1)=c('CHR', 'BP', "bfs", "P")


ten_thousand.2 <- read.table("out_10000_to_R.txt", header=TRUE)
names(ten_thousand.2)=c('CHR', 'BP', "P", "Alpha")

df.2 <- read.table("cluster2_average10", header = TRUE, sep="\t")

names(df.2)=c('CHR', 'BP', "bfs", "P")


ten_thousand.3 <- read.table("out_10000_cluster3_R.txt", header=TRUE)
names(ten_thousand.3)=c('CHR', 'BP', "P", "Alpha")

df.3 <- read.table("cluster3_averaged", header = TRUE, sep="\t")

names(df.3)=c('CHR', 'BP', "bfs", "P")


ten_thousand.5 <- read.table("out_10000_cluster5_R.txt", header=TRUE)
names(ten_thousand.5)=c('CHR', 'BP', "P", "Alpha")

df.5 <- read.table("cluster5_averaged", header = TRUE, sep="\t")

names(df.5)=c('CHR', 'BP', "bfs", "P")



par(mfrow=c(2,4))
manhattan(ten_thousand.2, ylim = c(0, 400), suggestiveline = F, genomewideline = F, 
          col = c("yellow4", "yellow2"), logp=FALSE,
          ylab="Composite Likelihood of Yellow SS Group", 
          cex=1.5, main ="")
manhattan(df.2, ylim = c(0, 50), suggestiveline = F, genomewideline = F, col = c("yellow4", "yellow2"), logp=FALSE,
          ylab=expression("log"[10]*" Bayes Fators yellow SS Group"), cex=1.5, 
          main="")

manhattan(ten_thousand.1, ylim = c(0, 400), suggestiveline = F, genomewideline = F, 
          col = c("red4", "red2"), logp=FALSE,
          ylab="Composite Likelihood of Tropical Group", 
          cex=1.5, main ="")
manhattan(df.1, ylim = c(0, 50), suggestiveline = F, genomewideline = F, col = c("red4", "red2"), logp=FALSE,
          ylab=expression("log"[10]*" Bayes Fators Tropical Group"), cex=1.5, 
          main="")

manhattan(ten_thousand.3, ylim = c(0, 400), suggestiveline = F, genomewideline = F, 
          col = c("green4", "green2"), logp=FALSE,
          ylab="Composite Likelihood of Green Early SS group", 
          cex=1.5, main ="")
manhattan(df.3, ylim = c(0, 50), suggestiveline = F, genomewideline = F, col = c("green4", "green2"), logp=FALSE,
          ylab=expression("log"[10]*" Bayes Fators Green Early SS Group"), cex=1.5, 
          main="")

manhattan(ten_thousand.5, ylim = c(0, 400), suggestiveline = F, genomewideline = F, 
          col = c("blue4", "blue2"), logp=FALSE,
          ylab="Composite Likelihood of NSS group", 
          cex=1.5, main ="")
manhattan(df.5, ylim = c(0, 50), suggestiveline = F, genomewideline = F, col = c("blue4", "blue2"), logp=FALSE,
          ylab=expression("log"[10]*" Bayes Fators NSS Group"), cex=1.5, 
          main="")



