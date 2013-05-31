\name{Dose.Response.binary}
\alias{Dose.Response.binary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Linear Contrast Test for Binary Dose Response Study
}
\description{
pi is the proportion of response in the ith group. 

Ho: p1=p2=...=pk

Ha: L(p)= \eqn{ \sum ci \times pi = \epsilon}, not equal to 0

}
\usage{
Dose.Response.binary(alpha, beta, pi, ci, fi)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{pi}{
pi is the proportion of response in the ith group. 
}
  \item{ci}{
a linear contrast coefficients ci with \eqn{ \sum ci=0 }. 

}
  \item{fi}{
fi=ni/n is the sample size fraction for the ith group
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
pi=c(0.05,0.12,0.14,0.16);
ci=c(-6,1,2,3);

Example.11.2<-Dose.Response.binary(alpha=0.05,beta=0.2,pi=pi,ci=ci,fi=1/4)
Example.11.2
#382

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
