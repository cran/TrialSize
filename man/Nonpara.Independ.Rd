\name{Nonpara.Independ}
\alias{Nonpara.Independ}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for independence for nonparametric study
}
\description{
Ho: \eqn{P(x \le a ~and~ y \le b) = P( x \le a ) P(y \le b)} for all a and b.
Ha: not equal
}
\usage{
Nonpara.Independ(alpha, beta, p1, p2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{ significance level
}
  \item{beta}{ power = 1-beta
}
  \item{p1}{
\eqn{p1=P((x1-x2)(y1-y2)>0) }
}
  \item{p2}{
\eqn{p2=P((x1-x2)(y1-y2)(x1-x3)(y1-y3)>0)}
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.14.4<-Nonpara.Independ(0.05,0.2,0.6,0.7)
Example.14.4
# 135

}
