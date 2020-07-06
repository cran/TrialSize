\name{TwoSampleSurvival.Equivalence}
\alias{TwoSampleSurvival.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for two sample equivalence in exponential model for survival data
}
\description{
margin=lamda1-lamda2, the true difference of hazard rates between control group lamda1 and a test drug group lamda2

H0: |margin| >= delta

Ha: |margin| <  delta 

This test is whether the test drug is equivalent to the control in average if the null hypothesis is rejected at significant level alpha
}

\usage{
TwoSampleSurvival.Equivalence(alpha, beta, lam1, lam2, k, ttotal, taccrual, gamma, margin)
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

Example.7.2.4<-TwoSampleSurvival.Equivalence(0.05,0.2,1,1,1,3,1,0.00001,0.5)
Example.7.2.4

}
