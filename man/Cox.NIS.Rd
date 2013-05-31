\name{Cox.NIS}
\alias{Cox.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for non-inferiority/superiority in Cox PH model. 
}
\description{
b is the log hazard ratio for treatment, \eqn{\delta} is the margin

H0: b  \eqn{ \le \delta }

Ha: b > \eqn{\delta} 
}
\usage{
Cox.NIS(alpha, beta, loghr, p1, p2, d, margin)
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
  \item{p2}{
the proportion of patients in treatment 2 group
}
  \item{d}{
the probability of observing an event
}
  \item{margin}{margin is the true difference of log hazard rates between control group lamda1 and a test drug group lamda2
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.7.3.4<-Cox.NIS(0.05,0.2,log(2),0.5,0.5,0.8,0.5)
Example.7.3.4

}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
