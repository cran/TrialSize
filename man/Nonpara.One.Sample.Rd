\name{Nonpara.One.Sample}
\alias{Nonpara.One.Sample}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One Sample Location problem in Nonparametric
}
\description{
H0: theta=0; Ha: theta is not equal to 0. 
}
\usage{
Nonpara.One.Sample(alpha, beta, p2, p3, p4)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{ significance level
}
  \item{beta}{ power = 1-beta
}
  \item{p2}{
p2=P(|zi|>=|zj|,zi>0)
}
  \item{p3}{
p3=P(|zi|>=|zj1|,|zi|>=|zj2|,zi>0)
}
  \item{p4}{
p4=P(|zj1|>=|zi|>=|zj2|,zj1>0,zi>0)
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.14.2<-Nonpara.One.Sample(0.05,0.2,0.3,0.4,0.05)
Example.14.2
# 383

## The function is currently defined as
function(alpha, beta, p2,p3,p4){
n=(qnorm(1-alpha/2)/sqrt(12)+qnorm(1-beta)*sqrt(p3+4*p4-4*p2^2))^2/(1/4-p2)^2
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
