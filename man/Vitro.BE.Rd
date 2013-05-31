\name{Vitro.BE}
\alias{Vitro.BE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
In Vitro Bioequivalence
}
\description{
Consider 2 by 2 crossover design. 
\eqn{\zeta = \delta^2+sT^2+sR^2-thetaBE*max(\sigma_0^2,sR^2)} . \eqn{sT^2=\sigma_{BT}^2+\sigma_{WT}^2}, \eqn{sR^2=\sigma_{BR}^2+\sigma_{WR}^2}

Ho: \eqn{\zeta \ge 0 }

Ha: \eqn{\zeta <  0 }
}
\usage{
Vitro.BE(alpha, beta, delta, sigmaBT, sigmaBR, sigmaWT, sigmaWR, thetaBE)
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
  \item{sigmaBT}{
\eqn{\sigma_{BT}^2} is the between-subjects variance in test formulation
}
  \item{sigmaBR}{
\eqn{\sigma_{BR}^2} is the between-subjects variance in reference formulation
}
   \item{sigmaWT}{
\eqn{\sigma_{WT}^2} is the within-subjects variance in test formulation
}
  \item{sigmaWR}{
\eqn{\sigma_{WR}^2} is the within-subjects variance in reference formulation
}
  \item{thetaBE}{
here thetaBE=1 
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.10.5<-Vitro.BE(0.05,0.2,0,0.5,0.5,0.5,0.5,1)
Example.10.5

# n=43 Vitro.BE reach 0

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
