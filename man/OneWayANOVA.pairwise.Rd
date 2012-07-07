\name{OneWayANOVA.pairwise}
\alias{OneWayANOVA.pairwise}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Pairwise Comparison for Multiple-Sample One-Way ANOVA
}
\description{
H0: mu_i is equal to mu_j
Ha: mu_i is not equal to mu_j

The test is comparing the means among treatments. There are tau pair comparisons of interested. Adjusted the multiple comparison by Bonferroni method, 
}
\usage{
OneWayANOVA.pairwise(alpha, beta, tau, sigma, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{tau}{ there are tau pair comparisons

}
  \item{sigma}{ standard deviation
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
