\name{Nonpara.Independ}
\alias{Nonpara.Independ}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for independence for nonparametric study
}
\description{
H0: P(x<=a and y<=b)=P(x<=a)P(y<=b) for all a and b.
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
p1=P((x1-x2)(y1-y2)>0)
}
  \item{p2}{
p2=P((x1-x2)(y1-y2)(x1-x3)(y1-y3)>0)
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.14.4<-Nonpara.Independ(0.05,0.2,0.6,0.7)
Example.14.4
# 135

## The function is currently defined as
function(alpha, beta,p1,p2){
n=4*(qnorm(1-alpha/2)/3+qnorm(1-beta)*sqrt(2*p2-1-(2*p1-1)^2))^2/(2*p1-1)^2
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
