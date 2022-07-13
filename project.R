#to get the working directory
getwd()

#LOADING DATA
#loading the genome list/Information
metadata <- read.table("Complete_1000_genomes", sep = "\t", header = TRUE)

#loading the eigenvec file
pca1 <- read.table("plink.eigenvec", sep = " ", header = F)

#merge the two data
merged_data <- merge(x= pca1,y= metadata, by.x ="V2", by.y = "Sample.name", all = F)

#install package (ggplot2)

#loading ggplot2
library("ggplot2")

#plot with ggplot
ggplot(data = merged_data, aes(V3,V4, color = Superpopulation.code)) + geom_point(size =2.0) + 
  labs(title="PCA plot", x="pca1", y="pca2") + theme_classic() + scale_colour_brewer(palette = "Set1") +
  theme(plot.title = element_text(face = "bold", size = 30, hjust = 0.5),
  axis.title.x=element_text(face = "bold.italic", size=20), 
  axis.title.y=element_text(face = "bold.italic", size=20))   

#saving the ggplot
ggsave("ggplot.png", width = 20, height = 15, units = "cm", limitsize = FALSE, dpi = 300)
  
  