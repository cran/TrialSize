\name{TwoSampleProportion.NIS}
\alias{TwoSampleProportion.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two sample proportion test for Non-Inferiority/Superiority
}
\description{
Ho: \eqn{ p1-p2  \le margin }
Ha: p1-p2 > margin

if margin >0, the rejection of Null Hypothesis indicates the true rate p1 is superior over the reference value p2; 

if margin <0, the rejection of the null hypothesis implies the true rate p1 is non-inferior against the reference value p2.

}
\usage{
TwoSampleProportion.NIS(alpha, beta, p1, p2, k, delta, margin)
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
Example.4.2.4<-TwoSampleProportion.NIS(0.05,0.2,0.65,0.85,1,0.2,0.05)
Example.4.2.4

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
