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
OneSampleProportion.Equality(alpha, beta, p, delta)
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

  \item{delta}{
delta=p-p0

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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
