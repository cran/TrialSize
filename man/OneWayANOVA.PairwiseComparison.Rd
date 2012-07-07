\name{OneWayANOVA.PairwiseComparison}
\alias{OneWayANOVA.PairwiseComparison}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One-way ANOVA pairwise comparison
}
\description{
H0: p_i=p_j
Ha: not all equal
}
\usage{
OneWayANOVA.PairwiseComparison(alpha, beta, tau, p1, p2, delta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{tau}{
there are tau comparisons here
}
   \item{p1}{
the mean response rate for test drug
}
  \item{p2}{
the rate for reference drug
}
  \item{delta}{
delta=p_i-p_j
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.4.2<-OneWayANOVA.PairwiseComparison(0.05,0.2,2,0.2,0.4,-0.2)
Example.4.4.2

Example.4.4.2<-OneWayANOVA.PairwiseComparison(0.05,0.2,2,0.2,0.5,-0.3)
Example.4.4.2

## The function is currently defined as
function(alpha,beta,tau,p1,p2,delta){
n.ij<-(qnorm(1-alpha/(2*tau))+qnorm(1-beta))^2*(p1*(1-p1)+p2*(1-p2))/delta^2
n.ij
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line