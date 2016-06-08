
pollutantmean <- function(directory, pollutant, id = 1:322) {
    
    files_list <- list.files(paste("rprog-data-specdata/",directory,"/", sep = ""), full.names=TRUE)
    dat_subset <- data.frame()
    for(i in 1:length(id)) {
        dat_subset <- rbind(dat_subset, read.csv(files_list[id[i]]))
    }
    
    mean(dat_subset[,pollutant], na.rm = TRUE)
}