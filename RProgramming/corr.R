##source("complete.R")

corr <- function(directory, threshold = 0) {
    
    files_list <- list.files(paste("rprog-data-specdata/",directory,"/", sep = ""), full.names=TRUE)
    dat <- complete(directory)
    dat_subset <- dat[which(dat$nobs > threshold),]
    correlation <-numeric()
    if(dim(dat_subset)[1] >0) {
        for(i in 1:dim(dat_subset)[1]) {
            dat_tmp <- read.csv(files_list[dat_subset$id[i]])
            dat_tmp <- dat_tmp[complete.cases(dat_tmp),]
            correlation <- c(correlation, cor(dat_tmp$sulfate, dat_tmp$nitrate))
        }
    } 
    correlation
}