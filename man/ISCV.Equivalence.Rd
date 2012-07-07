\name{ISCV.Equivalence}
\alias{ISCV.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Equivalence of Intra-Subject CVs
}
\description{

H0: |CVr - CVt|  >= delta

Ha: |CVr - CVt|  < delta

}
\usage{
ISCV.Equivalence(alpha, beta, CVt, CVr, m, margin)
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

## The function is currently defined as
function(alpha,beta,CVt,CVr,m,margin){

sigma1=1/(2*m)*CVt^2+CVt^4
sigma2=1/(2*m)*CVr^2+CVr^4

n=(sigma1+sigma2)*(qnorm(1-alpha)+qnorm(1-beta/2))^2/(margin-abs(CVt-CVr))^2

  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
