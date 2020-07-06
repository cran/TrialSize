\name{QT.crossover}
\alias{QT.crossover}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Crossover Design in QT/QTc Studies without covariates
}

\description{
Ho: \eqn{\mu_1 -\mu_2 = 0 }

Ha:  \eqn{\mu_1 -\mu_2 = d }

The test is finding the treatment difference in QT interval for crossover design .  d is not equal to 0, which is the difference of clinically importance.
}
\usage{
QT.crossover(alpha, beta, pho, K, delta, gamma)
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
  \item{gamma}{
\eqn{\sigma^2_p} is the extra variance from the random period effect for the crossover design. \eqn{\gamma=\sigma^2_p/\sigma^2}
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.15.1.3<-QT.crossover(0.05,0.2,0.8,3,0.5,0.002)
Example.15.1.3
# 29
}
