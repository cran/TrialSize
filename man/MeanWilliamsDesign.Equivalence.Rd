\name{MeanWilliamsDesign.Equivalence}
\alias{MeanWilliamsDesign.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Equivalence in Multiple-Sample William Design
}
\description{
Compare more than two treatment under a crossover design. 

H0: |margin| >= delta
Ha: |margin| <  delta 

This test is whether the test drug is equivalent to the control in average if the null hypothesis is rejected at significant level alpha
}
\usage{
MeanWilliamsDesign.Equivalence(alpha, beta, sigma, k, delta, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation

}
  \item{k}{ Total k treatments in the design

}


 \item{delta}{ the superiority or non-inferiority margin
}


  \item{margin}{
margin=mu_i-mu_j

the difference between the true mean response of group i mu_i and group j mu_j

}

}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
