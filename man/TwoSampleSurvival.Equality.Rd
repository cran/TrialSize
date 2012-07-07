\name{TwoSampleSurvival.Equality}
\alias{TwoSampleSurvival.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for two sample equality in exponential model for survival data
}
\description{
H0: the difference between the hazard rates of two samples is equal to 

Ha: not equal to 0 

The test is finding whether there is a difference between the hazard rates of the test drug and the reference drug.
}
\usage{
TwoSampleSurvival.Equality(alpha, beta, lam1, lam2, k, ttotal, taccrual, gamma)
}
%- maybe also 'usage' for other objects documented here.
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
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.7.2.4<-TwoSampleSurvival.Equality(0.05,0.2,1,2,1,3,1,0.00001)
Example.7.2.4

## The function is currently defined as
function(alpha,beta,lam1,lam2,k,ttotal,taccrual,gamma){
variance1<-lam1^2*(1+gamma*exp(-lam1*ttotal)*(1-exp((lam1-gamma)*taccrual))/((lam1-gamma)*(1-exp(-gamma*taccrual))))^-1
variance2<-lam2^2*(1+gamma*exp(-lam2*ttotal)*(1-exp((lam2-gamma)*taccrual))/((lam2-gamma)*(1-exp(-gamma*taccrual))))^-1

print(variance1)
print(variance2)

n2=(qnorm(1-alpha/2)+qnorm(1-beta))^2*(variance1/k+variance2)/(lam1-lam2)^2
n2 }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
