\name{TwoSampleSurvival.NIS}
\alias{TwoSampleSurvival.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for two sample Non-Inferiority/Superiority in exponential model for survival data
}
\description{
margin=lamda1-lamda2, the true difference of hazard rates between control group lamda1 and a test drug group lamda2

H0: margin <= delta

Ha: margin >  delta 

if delta >0, the rejection of Null Hypothesis indicates the superiority of the test drug over the control; 

if delta <0, the rejection of the null hypothesis implies the non-inferiority of the test test drug against the control. 
}

\usage{
TwoSampleSurvival.NIS(alpha, beta, lam1, lam2, k, ttotal, taccrual, gamma,margin)
}


\arguments{
  \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{lam1}{
the hazard rates of control group
}
  \item{lam2}{
the hazard rates of a test drug
}
  \item{k}{
k=n1/n2 sample size ratio
}
  \item{ttotal}{
Total trial time
}
  \item{taccrual}{
accrual time period
}
  \item{gamma}{
parameter for exponential distribution. Assume Uniform patient entry if gamma =0
}
  \item{margin}{
margin=lamda1-lamda2, the true difference of hazard rates between control group lamda1 and a test drug group lamda2
}
}


\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{

Example.7.2.4<-TwoSampleSurvival.NIS(0.05,0.2,1,2,1,3,1,0.00001,0.2)
Example.7.2.4

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
