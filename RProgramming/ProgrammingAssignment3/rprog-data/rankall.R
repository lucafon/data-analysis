

rankall <- function(outcome, num = "best") {
    setwd("/Users/Admin/Desktop/workspaces/workspaceR/data-analysis/RProgramming/ProgrammingAssignment3/rprog-data/")
    source("rankhospital.R")
    s <- unique(dat$State)
    s <- s[order(s)]
    hospital <- sapply(s, rankhospital, outcome = outcome, num = num)
    tot <- as.data.frame(hospital)
    tot <- cbind(tot, "state" = names(hospital))
    tot
}