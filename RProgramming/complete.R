
complete <- function(directory, id = 1:322) {
    
    files_list <- list.files(paste("rprog-data-specdata/",directory,"/", sep = ""), full.names=TRUE)
    dat <- data.frame()
    for(i in 1:length(id)) {
        dat_subset <- read.csv(files_list[id[i]])
        dat_subset <- dat_subset[complete.cases(dat_subset),]
        dat2 <- data.frame("id" = id[i], "nobs" =  dim(dat_subset)[1])
        dat <- rbind(dat, dat2)
    }
    dat
}