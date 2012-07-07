\name{TwoSampleSurvival.Conditional}
\alias{TwoSampleSurvival.Conditional}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for two sample conditional data in exponential model for survival data 
}
\description{
unconditional versus conditional
}
\usage{
TwoSampleSurvival.Conditional(alpha, beta, lam1, lam2, eta1, eta2, k, ttotal, taccrual, gamma1, gamma2)
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
  \item{eta1}{
in control group, the losses are exponentially distributed with loss hazard rate eta1 
}
  \item{eta2}{
in treatment group, the losses are exponentially distributed with loss hazard rate eta2 
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
  \item{gamma1}{
parameter for the entry distribution of control group, which is uniform patient entry with gamma1=0. 
}
  \item{gamma2}{
parameter for the entry distribution of treatment group, which is uniform patient entry with gamma2=0. 
}


}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
