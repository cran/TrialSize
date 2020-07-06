\name{Cox.Equality}
\alias{Cox.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for equality in Cox PH model. 
}
\description{
b is the log hazard ratio for treatment, b0 is the log hazard ratio for the controls
 
H0: b=b0

Ha: not equal to b0 

The test is finding whether there is a difference between the hazard rates of the treatment and control.
}
\usage{
Cox.Equality(alpha, beta, loghr, p1,d)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{loghr}{
log hazard ratio=log(lamda2/lamda1)=b
}
  \item{p1}{
the proportion of patients in treatment 1 group
}
  \item{d}{
the probability of observing an event
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.7.3.4<-Cox.Equality(0.05,0.2,log(2),0.5,0.8)
Example.7.3.4

}
