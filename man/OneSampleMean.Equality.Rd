\name{OneSampleMean.Equality}
\alias{OneSampleMean.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One Sample Mean Test for Equality
}
\description{
H0: margin is equal to 0
Ha: margin is not equal to 0

The test is finding whether there is a difference between the mean response of the test \eqn{\bar{x}} and the reference value \eqn{\mu_0}

}
\usage{
OneSampleMean.Equality(alpha, beta, sigma, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation

}
  \item{margin}{
\eqn{margin=\bar{x}-\mu_0}

the difference between the true mean response of a test \eqn{\bar{x}}  and a reference value  \eqn{\mu_0}

}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
OneSampleMean.Equality(0.05,0.2,1,0.5)
# 32
}
