\name{ISCV.NIS}
\alias{ISCV.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Non-Inferiority/Superiority of Intra-Subject CVs
}
\description{

H0: CVr - CVt  < \eqn{\delta}

Ha: CVr - CVt  \eqn{ \ge \delta }

if \eqn{\delta} > 0, the rejection of Null Hypothesis indicates the superiority of the test drug over the reference; 

if \eqn{\delta} < 0, the rejection of the null hypothesis implies the non-inferiority of the test drug against the reference.
}
\usage{
ISCV.NIS(alpha, beta, CVt, CVr, m, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{CVt}{
Coefficient Of Variation for treatment T
}
  \item{CVr}{
Coefficient Of Variation for treatment R
}
   \item{m}{
for each subject, there are m replicates.
}
  \item{margin}{
margin=delta, 
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.9.2.1<-ISCV.NIS(0.05,0.2,0.7,0.5,2,0.1)
Example.9.2.1

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
