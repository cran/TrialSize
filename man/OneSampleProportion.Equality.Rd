\name{OneSampleProportion.Equality}
\alias{OneSampleProportion.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One sample proportion test for equality
}
\description{
Ho: p=p0

Ha: not equal

The test is finding whether there is a difference between the true rate of the test drug and reference value p0
}
\usage{
OneSampleProportion.Equality(alpha, beta, p, differ)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{p}{
the true response rate
}

  \item{differ}{
differ=p-p0

the difference between the true response rate of a test drug and a reference value p0

}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.1.4<-OneSampleProportion.Equality(0.05,0.2,0.5,0.2)
Example.4.1.4

}
