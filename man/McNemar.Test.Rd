\name{McNemar.Test}
\alias{McNemar.Test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 McNemar Test in 2 by 2 table
}
\description{
2 by 2 table. Test either a shift from 0 to 1 or a shift from 1 to 0 before treatment and after treatment.p1+=P10+P11, P+1=P01+P11

H0: p1+ = p+1

Ha: not equal

The test is finding whether there is a categorical shift after treatment.

}
\usage{
McNemar.Test(alpha, beta, psai, paid)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{psai}{
the ratio of p01/p10
}
  \item{paid}{
the sum p10+p01
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


\examples{
Example.6.4.3<-McNemar.Test(0.05,0.2,0.2/0.5,.7)
Example.6.4.3
# 59

}

