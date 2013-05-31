\name{IBE}
\alias{IBE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Individual Bioequivalence
}
\description{
Consider 2 by 2 crossover design. \eqn{ \gamma=\delta^2+\sigma_D^2+\sigma_{WT}^2-\sigma_{WR}^2-\theta_{IBE}*max(\sigma_{0}^2,\sigma_{WR}^2)} 

Ho: \eqn{\gamma \ge 0 }

Ha: \eqn{\gamma <  0 }

}
\usage{
IBE(alpha, beta, delta, sigmaD, sigmaWT, sigmaWR, a, b, thetaIBE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{delta}{
delta is the mean difference
}
  \item{sigmaD}{
sigmaD^2=sigmaBT^2+sigmaBR^2-2*rho*sigmaBT*sigmaBR, sigmaBT^2 is the between-subjects variance in test formulation, sigmaBR^2 is the between-subjects variance in reference formulation
}
  \item{sigmaWT}{
sigmaWT^2 is the within-subjects variance in test formulation
}
  \item{sigmaWR}{
sigmaWR^2 is the within-subjects variance in reference formulation
}
  \item{a}{
Sigma(a,b)=sigmaD^2+a*sigmaWT^2+b*sigmaWR^2

a=0.5 here
}
  \item{b}{
b=0.5 here
}
  \item{thetaIBE}{
thetaIBE=2.5
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.10.4<-IBE(0.05, 0.2, 0, 0.2,0.3,0.3,0.5,0.5,2.5)
Example.10.4

# n=22 IBE reach 0 



}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
