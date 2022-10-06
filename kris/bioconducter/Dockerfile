# Docker inheritance
FROM bioconductor/bioconductor_docker:devel


# Install required Bioconductor package
RUN R -e 'install.packages("waveslim")'
RUN R -e 'install.packages("fields")'
RUN R -e 'install.packages("ggplot2")'
RUN R -e 'install.packages("reshape2")'


RUN R -e 'BiocManager::install("Biobase")'
RUN R -e 'BiocManager::install("genefilter")'
RUN R -e 'BiocManager::install("STexampleData")'
RUN R -e 'BiocManager::install("SpatialExperiment")'

CMD ["R", "--version"]