\name{RelativeRisk.Equality}
\alias{RelativeRisk.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Relative Risk in Parallel Design test for Equality 
}
\description{

Ho: OR=1

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

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
