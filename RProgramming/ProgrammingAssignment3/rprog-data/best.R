
best <- function(state, outcome) {
    setwd("/Users/Admin/Desktop/workspaces/workspaceR/data-analysis/RProgramming/ProgrammingAssignment3/rprog-data/")
    dat <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    stateDat <- dat[which(dat$State == state),]
    if(dim(stateDat)[1] == 0) {
        stop("invalid state")
    }
    if(outcome == "heart attack") {
        minVal <- min(suppressWarnings(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)), na.rm = TRUE)
        stateOutcome <- stateDat[which(suppressWarnings(as.numeric(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)) == minVal),]
        stateOutcome$Hospital.Name
    }
    else if(outcome == "heart failure") {
        minVal <- min(suppressWarnings(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)), na.rm = TRUE)
        stateOutcome <- stateDat[which(suppressWarnings(as.numeric(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)) == minVal),]
        stateOutcome$Hospital.Name
    }
    else if(outcome == "pneumonia") {
        minVal <- min(suppressWarnings(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)), na.rm = TRUE)
        stateOutcome <- stateDat[which(suppressWarnings(as.numeric(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)) == minVal),]
        stateOutcome$Hospital.Name
    } else {
        stop("invalid outcome")
    }
        
}