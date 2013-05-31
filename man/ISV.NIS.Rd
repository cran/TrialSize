\name{ISV.NIS}
\alias{ISV.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Non-Inferiority/Superiority of Intra-Subject Variabilities
}
\description{
the ratio = within-subject variance of treatment T / within-subject variance of treatment R  

H0: the ratio \eqn{\ge \delta}

Ha: the ratio < \eqn{\delta}

if \eqn{\delta} < 1, the rejection of Null Hypothesis indicates the superiority of the test drug over the reference for the intra-subject variability; 

if \eqn{\delta} > 1, the rejection of the null hypothesis implies the non-inferiority of the test drug against the reference for the intra-subject variability; .
}
\usage{
ISV.NIS(alpha, beta, sigma1, sigma2, m, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{sigma1}{
within-subject variance of treatment 1
}
  \item{sigma2}{
within-subject variance of treatment 2
}
  \item{m}{
for each subject, there are m replicates.
}
  \item{margin}{
margin=delta, the true ratio of sigma1/sigma2
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.9.1.1<-ISV.NIS(0.05,0.2,0.3^2,0.45^2,3,1.1)
Example.9.1.1


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
