\name{QT.parallel}
\alias{QT.parallel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Parallel Group Design in QT/QTc Studies without covariates
}
\description{
Ho: \eqn{\mu_1 -\mu_2 = 0 }

Ha:  \eqn{\mu_1 -\mu_2 = d }

The test is finding the treatment difference in QT interval. d is not equal to 0, which is the difference of clinically importance. 

}
\usage{
QT.parallel(alpha, beta, pho, K, delta)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
    \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{pho}{
pho=between subject variance \eqn{\sigma^{2}_{s}}/(between subject variance \eqn{\sigma^2_s}+within subject variance \eqn{\sigma^2_e})
}
  \item{K}{
There are K recording replicates for each subject.
}
  \item{delta}{
\eqn{\sigma^2=\sigma^2_s+\sigma^2_e}. d is the difference of clinically importance. \eqn{\delta = d/\sigma }
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.15.1.2<-QT.parallel(0.05,0.2,0.8,3,0.5)
Example.15.1.2
# 54

}
