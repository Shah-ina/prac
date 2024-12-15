# install packages\
# 1. CRAN
# 2. Bioconductor
# 3. GitHub

# download the cran packages
install.packages("ggplot2")
library(ggplot2)

# download packages from bioconductor
# installing Biocmanager
install.packages("BiocManager")
library(BiocManager)
BiocManager::install("Seurat")
library(Seurat)

BiocManager::install("Biostrings")
library(Biostrings)

.libPaths()

install.packages("devtools")
library(devtools)

#remote or devtools
devtools::install_github("rstudio/shiny")
devtools::install_github("rstudio/shiny", force = TRUE)
library(shiny)

install.packages("patchwork")
library(patchwork)

# install the packages - done
# load the packages - done (library)
library(Seurat)

# seurat data package contains a lot of data
install.packages("SeuratData")

if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("satijalab/seurat-data")
library(SeuratData)

install.packages("Seurat")
library(Seurat)
Seurat::InstallData("SeuratData")
library(SeuratData)

installed.packages()

# use availabledata method to see all the data that is present in seuratdata package
AvailableData()

# inc. timeout duration- By default, R has a timeout limit for downloads. Increase it to allow for large files:
# Set timeout to 300 seconds (5 minutes)
options(timeout = 300)  


#install the stxbrain data
InstallData("stxBrain")

#load the data
brain <- LoadData("stxBrain", type = "anterior1")
brain

# to check metadata
View(brain@meta.data)

# to check all kind of info of compartments use "@" and to check sub-info of that compartment use "$"
View(brain)
View(brain@meta.data$slice)

# print starting 5 features in the console
head(x = rownames(brain), n = 7)

# print the starting 15 barcodes
head(x = colnames(brain), n = 15)

# dimension of the data
dim(x = brain)

