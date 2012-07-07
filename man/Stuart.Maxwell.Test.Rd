\name{Stuart.Maxwell.Test}
\alias{Stuart.Maxwell.Test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Stuart-Maxwell Test
}
\description{
Extention from McNemar test to r by r table (r>2). 

H0: pij = pji for all different i,j.

Ha: not equal

The test is finding whether there is a categorical shift from i pre-treatment to j post-treatment.
}
\usage{
Stuart.Maxwell.Test(noncen, p.ij, p.ji, r)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{noncen}{
the solution of the equation, which is non-central parameter of non-central chisquare distribtuion .
}
  \item{p.ij}{
the probability of shift from i pre-treatment to j post-treatment
}
  \item{p.ji}{
the probability of shift from j pre-treatment to i post-treatment
}
  \item{r}{
r by r tables, r is df
}
}


\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
## The function is currently defined as
function(noncen,p.ij,p.ji,r){
sum=0
n<-noncen*(for (j in 1:r){for (i in 1:j){
sum=sum+(p.ij[i,j]-p.ji[j,i])^2/(p.ij[i,j]+p.ji[j,i])}})^-1
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
