\name{TwoSampleSeqCrossOver.Equality}
\alias{TwoSampleSeqCrossOver.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two sample proportion Crossover design test for equality
}
\description{
H0: p2-p1 = 0
Ha: not equal to 0 
}
\usage{
TwoSampleSeqCrossOver.Equality(alpha, beta, sigma, sequence, delta)
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
delta=p2-p1
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.3.4<-TwoSampleSeqCrossOver.Equality(0.05,0.2,0.25,2,0.2)
Example.4.3.4

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
