\name{InterSV.Equality}
\alias{InterSV.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Equality of Inter-Subject Variabilities
}
\description{

H0: between-subject variance of treatment T  is equal to between-subject variance of treatment R 

Ha: not equal  

The test is finding whether two drug products have the same inter-subject variability.
}
\usage{
InterSV.Equality(alpha, beta, vbt, vwt, vbr, vwr, m)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{vbt}{
between-subject variance of treatment T
}
  \item{vwt}{
within-subject variance of treatment T
}
  \item{vbr}{
between-subject variance of treatment R
}
  \item{vwr}{
within-subject variance of treatment R
}
  \item{m}{
for each subject, there are m replicates.
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
