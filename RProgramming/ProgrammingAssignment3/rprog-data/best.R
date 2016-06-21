
best <- function(state, outcome) {
    setwd("/Users/Admin/Desktop/workspaces/workspaceR/data-analysis/RProgramming/ProgrammingAssignment3/rprog-data/")
    dat <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    stateDat <- dat[which(dat$State == state),]
    if(dim(stateDat)[1] == 0) {
        stop("invalid state")
    }
    if(outcome == "heart attack") {
        stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack), stateDat$Hospital.Name),]
        stateOutcome$Hospital.Name[1]
    }
    else if(outcome == "heart failure") {
        stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure), stateDat$Hospital.Name),]
        stateOutcome$Hospital.Name[1]
    }
    else if(outcome == "pneumonia") {
        stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia), stateDat$Hospital.Name),]
        stateOutcome$Hospital.Name[1]
    } else {
        stop("invalid outcome")
    }
    
}