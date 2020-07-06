\name{Sensitivity.Index}
\alias{Sensitivity.Index}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the power for Sensitivity Index
}
\description{

Ho: \eqn{\mu_1 = \mu_2 }

Ha: \eqn{\mu_1} is not equal to \eqn{\mu_2}  

The test is finding the treatment difference in QT interval. 

d is not equal to 0, which is the difference of clinically importance. 




}
\usage{
Sensitivity.Index(alpha, n, deltaT)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{
significance level
}
  \item{n}{
sample size n
}
  \item{deltaT}{
a measure of change in the signal-to-noise ratio for the population difference, which is the sensitivity index of population difference between regions. 
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.15.5.1<-Sensitivity.Index(0.05,30,2.92)
Example.15.5.1
# power=0.805

}
