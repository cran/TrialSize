\name{TwoSampleSeqCrossOver.Equivalence}
\alias{TwoSampleSeqCrossOver.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two sample proportion Crossover design test for equivalence
}
\description{
Ho: \eqn{|p1-p2| \ge margin }

Ha: |p1-p2| < margin

}
\usage{
TwoSampleSeqCrossOver.Equivalence(alpha, beta, sigma, sequence, delta, margin)
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
margin=p2-p1
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


\examples{
Example.4.3.4<-TwoSampleSeqCrossOver.Equivalence(0.05,0.2,0.25,2,0,0.2)
Example.4.3.4

}
