\name{Nonpara.Two.Sample}
\alias{Nonpara.Two.Sample}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two sample location problem for Nonparametric
}
\description{
H0: theta=0; Ha: theta is not equal to 0. 
}
\usage{
Nonpara.Two.Sample(alpha, beta, k, p1, p2, p3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level
}
  \item{beta}{ power = 1-beta
}
  \item{k}{
k=n1/n2
}
  \item{p1}{
p1=P(yi>=xj)
}
  \item{p2}{
p2=P(yi>=xj1 and yi>=xj2)
}
  \item{p3}{
p3=P(yi1>=xj and yi2>=xj)
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.14.3<-Nonpara.Two.Sample(0.05,0.2,1,0.7,0.8,0.8)
Example.14.3
#54

## The function is currently defined as
function(alpha, beta,k, p1,p2,p3){
n=(qnorm(1-alpha/2)*sqrt(k*(k+1)/12)+qnorm(1-beta)*sqrt(k^2*(p2-p1^2)+k*(p3-p1^2)))^2/(k^2*(1/2-p1)^2)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
