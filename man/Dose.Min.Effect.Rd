\name{Dose.Min.Effect}
\alias{Dose.Min.Effect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Williams' Test for Minimum effective dose (MED)
}
\description{
Ho: \eqn{\mu_1=\mu_2=...=\mu_K }
Ha:  \eqn{\mu_1=\mu_2=...=\mu_{i-1} < \mu_{i} < \mu_{i+1} < \mu_{K}}
}
\usage{
Dose.Min.Effect(alpha, beta, qt, sigma, delta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{qt}{
the critical value tk(alpha)
}
  \item{sigma}{
standard deviation
}
  \item{delta}{
\eqn{\delta} is the clinically meaningful minimal difference
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.11.4.1<-Dose.Min.Effect(0.05,0.2,1.75,0.22,0.11)
Example.11.4.1
#54
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
