\name{WilliamsDesign.NIS}
\alias{WilliamsDesign.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Williams Design test for Non-inferiority/Superiority
}
\description{

H0: \eqn{\mu_1-\mu_2 \le margin }

Ha:  \eqn{\mu_1-\mu_2 > margin }

}
\usage{
WilliamsDesign.NIS(alpha, beta, sigma, sequence, delta, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation in crossover design

}

  \item{sequence}{
total sequence number 
}

  \item{delta}{
the superiority or non-inferiority margin
}
  \item{margin}{
margin=\eqn{\mu_1-\mu_2}
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.5.4<-WilliamsDesign.NIS(0.05,0.2,0.75^2,6,0.2,0.05)
Example.4.5.4

}
