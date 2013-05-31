\name{OneSampleProportion.NIS}
\alias{OneSampleProportion.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One sample proportion test for Non-inferiority/Superiority
}
\description{
Ho: \eqn{ p-p0 \le margin }

Ha: p-p0 >  margin

if margin >0, the rejection of Null Hypothesis indicates the true rate is superior over the reference value p0; 

if margin <0, the rejection of the null hypothesis implies the true rate is non-inferior against the reference value p0.

}
\usage{
OneSampleProportion.NIS(alpha, beta, p, delta, margin)
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
  \item{margin}{
the superiority or non-inferiority margin
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.1.4<-OneSampleProportion.NIS(0.025,0.2,0.5,0.2,-0.1)
Example.4.1.4

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
