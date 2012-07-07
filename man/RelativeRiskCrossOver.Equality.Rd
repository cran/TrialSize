\name{RelativeRiskCrossOver.Equality}
\alias{RelativeRiskCrossOver.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Relative Risk in Crossover Design test for Equality
}
\description{
H0: log(OR)=0

Ha: not equal to 0
}
\usage{
RelativeRiskCrossOver.Equality(alpha, beta, sigma, or)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{
standard deviation in crossover design
}
  \item{or}{
or=pt(1-pc)/pc(1-pt)
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{

## The function is currently defined as
function(alpha,beta,sigma,or){
n<-(qnorm(1-alpha/2)+qnorm(1-beta))^2*sigma/(log(or))^2
n
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
