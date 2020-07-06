\name{TwoSampleProportion.Equivalence}
\alias{TwoSampleProportion.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two sample proportion test for equivalence
}
\description{
Ho: \eqn{|p1-p2| \ge margin }

Ha: |p1-p2| < margin

The proportion of response p1 is equivalent to the reference drug p2 is the null hypothesis is rejected}
\usage{
TwoSampleProportion.Equivalence(alpha, beta, p1, p2, k, delta, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
   \item{p1}{
the mean response rate for test drug
}
  \item{p2}{
the rate for reference drug
}
  \item{k}{
k=n1/n2
}
  \item{delta}{
delta=p1-p2
}
  \item{margin}{
the superiority or non-inferiority margin
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.2.4<-TwoSampleProportion.Equivalence(0.05,0.2,0.75,0.8,1,0.2,0.05)
Example.4.2.4

}
