\name{AB.withoutDescalation}
\alias{AB.withoutDescalation}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A + B Escalation Design without Dose De-escalation
}
\description{

The general A+B designs without dose de-escalation. There are A patients at dose level i. 

(1) If less than C/A patients have dose limiting toxicity (DLTs), then the dose is escalated to the next dose level i+1.

(2)If more than D/A (D \eqn{\ge} C) patients have DLTs, then the previous dose i-1 will be considered the maximum tolerable dose (MTD). 

(3)If no less than C/A but no more than D/A patients have DLTs, B more patients are treated at this dose level i. 

(4)If no more than E (where E \eqn{\ge} D) of the total A+B patients have DLT, then the dose is escalated.

(5)If more than E of the total of A+B patients have DLT, then the previous dose i-1 will be considered the MTD. 

}
\usage{
AB.withoutDescalation(A, B, C, D, E, DLT)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
number of patients for the start A
}
  \item{B}{
number of patients for the continuous B
}
  \item{C}{
number of patients for the first cut off C
}
  \item{D}{
number of patients for the second cut off D, D \eqn{\ge} C
}
  \item{E}{
number of patients for the third cut off D, E \eqn{\ge} D
}
  \item{DLT}{
dose limiting toxicity rate for each dose level. 
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}



\examples{
DLT=c(0.01,0.014,0.025,0.056,0.177,0.594,0.963)
Example.11.6.1<-AB.withoutDescalation(A=3,B=3,C=1,D=1,E=1,DLT=DLT)
Example.11.6.1
# Example.11.6.1[1]=3.1
}

