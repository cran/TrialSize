\name{WilliamsDesign.Equality}
\alias{WilliamsDesign.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
William Design test for equality
}
\description{
Ho: \eqn{\mu_{1}-\mu_{2}=0}

Ha: not equal to 0

}
\usage{
WilliamsDesign.Equality(alpha, beta, sigma, sequence, delta)
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
delta=\eqn{\mu_{1}-\mu_{2}}
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.5.4<-WilliamsDesign.Equality(0.05,0.2,0.75^2,6,0.2)
Example.4.5.4

}
