\name{Carry.Over}
\alias{Carry.Over}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test the Carry-over effect 
}
\description{
2 by 2 crossover design. Test the treatment-by-period interaction (carry-over effect)

H0: the difference of the two sequence carry-over effects is equal to 0

Ha: not equal to 0

The test is finding whether there is a difference between the carry-over effect for sequence AB and BA.

}
\usage{
Carry.Over(alpha, beta, sigma1, sigma2, gamma)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{sigma1}{
standard deviation of sequence AB
}
  \item{sigma2}{
standard deviation of sequence BA
}
  \item{gamma}{
the difference of carry-over effect between sequence AB and BA

}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.6.5.2<-Carry.Over(0.025,0.2,2.3,2.4,0.89)
Example.6.5.2 # 110

}
