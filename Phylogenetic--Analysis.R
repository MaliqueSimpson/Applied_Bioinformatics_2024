# Load the dataset
setwd("/Users/maliq/OneDrive/Desktop/GSE344_RAW")
data <- ReadAffy()

# Plot the dataset
boxplot(data, xlab = "Samples", ylab = "Genes", main = "Raw Microarray Plot", col = "blue")

# Perform normalization of raw datasets
data_norm <- rma(data)
data_norm <- exprs(data_norm)

# Plot the normalized datasets
boxplot(data_norm, xlab = "Samples", ylab = "Genes", main = "Normalized Microarray Plot", col = "green")

# Assign the first 2 samples as Treatment and the next 2 samples as Control
Treatment <- data_norm[, 1:2]
Control <- data_norm[, 3:4]

# Comparing treatment and control groups using fold change analysis
Average_Treatment <- rowMeans(Treatment)
Average_Control <- rowMeans(Control)

Fold_change <- Average_Treatment - Average_Control

#Fold change > 1.5 up-regulated; <- 1.5 down-regulated 

install.packages("ape"); install.packages("phangorn");
install.packages("phytools"); install.packages("geiger")
library(ape)

text.string<- "(((((((cow, pig),whale),(bat,(lemur,human))),(robin,iguana)),coelacanth),gold_fish),shark);"

#Read data is tree structure
vert.tree<-read.tree(text=text.string)

#Generate a basic plot of dummy data (rooted plot)
plot(vert.tree,no.margin=TRUE,edge.width=2,main="Phylogenetic Tree")

#Generate a un-rooted plot on the dummy data
plot(unroot(vert.tree),type="unrooted",no.margin=TRUE,lab4ut="axial", edge.width=2)



