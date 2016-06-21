
rankhospital <- function(state, outcome, num) {
    setwd("/Users/Admin/Desktop/workspaces/workspaceR/data-analysis/RProgramming/ProgrammingAssignment3/rprog-data/")
    dat <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    stateDat <- dat[which(dat$State == state),]
    if(dim(stateDat)[1] == 0) {
        stop("invalid state")
    }
    if(outcome == "heart attack") {
        if(num == "worst") {
            stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack), stateDat$Hospital.Name, na.last = FALSE),]
            stateOutcome$Hospital.Name[dim(stateOutcome)[1]]
        } else if(num == "best") {
            stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack), stateDat$Hospital.Name),]
            stateOutcome$Hospital.Name[1]
        } else {
            stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack), stateDat$Hospital.Name),]
            stateOutcome$Hospital.Name[num]
        }
    }
    else if(outcome == "heart failure") {
        if(num == "worst") {
            stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure), stateDat$Hospital.Name, na.last = FALSE),]
            stateOutcome$Hospital.Name[dim(stateOutcome)[1]]
        } else if(num == "best") {
            stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure), stateDat$Hospital.Name),]
            stateOutcome$Hospital.Name[1]
        } else {
            stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure), stateDat$Hospital.Name),]
            stateOutcome$Hospital.Name[num]
        }
    }
    else if(outcome == "pneumonia") {
        if(num == "worst") {
            stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia), stateDat$Hospital.Name, na.last = FALSE),]
            stateOutcome$Hospital.Name[dim(stateOutcome)[1]]
        } else if(num == "best") {
            stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia), stateDat$Hospital.Name),]
            stateOutcome$Hospital.Name[1]
        } else {
            stateOutcome <- stateDat[order(as.double(stateDat$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia), stateDat$Hospital.Name),]
            stateOutcome$Hospital.Name[num]
        }
    } else {
        stop("invalid outcome")
    }
    
}