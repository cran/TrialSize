\name{RelativeRisk.Equality}
\alias{RelativeRisk.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Relative Risk in Parallel Design test for Equality 
}
\description{

H0: OR=1

Ha: not equal to 1

}
\usage{
RelativeRisk.Equality(alpha, beta, or, k, pt, pc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{or}{
or=pt(1-pc)/pc(1-pt)
}
  \item{k}{
k=nT/nC
}
  \item{pt}{
the probability of observing an outcome of interest for a patient treatment by a test treatment
}
  \item{pc}{
the probability of observing an outcome of interest for a patient treatment by a control
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.6.4<-RelativeRisk.Equality(0.05,0.2,2,1,0.4,0.25)
Example.4.6.4

## The function is currently defined as
function(alpha,beta,or,k,pt,pc){
n.c<-(qnorm(1-alpha/2)+qnorm(1-beta))^2*(1/(k*pt*(1-pt))+1/(pc*(1-pc)))/(log(or))^2
n.c
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
