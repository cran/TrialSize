\name{Stuart.Maxwell.Test}
\alias{Stuart.Maxwell.Test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Stuart-Maxwell Test
}
\description{
Extention from McNemar test to r by r table (r>2). 

Ho: \eqn{p_{ij} = p_{ji}} for all different i,j.

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

