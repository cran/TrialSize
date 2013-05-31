\name{PBE}
\alias{PBE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Population Bioequivalence
}
\description{
Consider 2 by 2 crossover design. 

H0: lamda >= 0

Ha: lamda <  0
}

\usage{
PBE(alpha, beta, sigma1.1, sigmatt, sigmatr, sigmabt, sigmabr, rho, a, delta, lamda)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma1.1}{
\eqn{\sigma_{a.b}^2=\sigma_{D}^2+a\sigma_{WT}^2+b\sigma_{WR}^2}. Here a=b=1.
}
  \item{sigmatt}{
\eqn{\sigma_{tt}^2=\sigma_{BT}^2+\sigma_{WT}^2},  \eqn{\sigma_{wt}^2} is the within-subjects variance in test formulation 

}
  \item{sigmatr}{
\eqn{\sigma_{tr}^2=\sigma_{BR}^2+\sigma_{WR}^2},  \eqn{\sigma_{wr}^2} is the within-subjects variance in reference formulation 
}
  \item{sigmabt}{
\eqn{\sigma_{bt}^2} is the between-subjects variance in test formulation
}
  \item{sigmabr}{
\eqn{\sigma_{br}^2} is the between-subjects variance in reference formulation

}
  \item{rho}{
rho is the inter-subject correlation coefficient.
}
  \item{a}{
a= thetaPBE =1.74
}
  \item{delta}{
delta is the mean difference of AUC
}
  \item{lamda}{
\eqn{lamda=delta^{2}+\sigma^2-\sigma_{TR}^2-thetaPBE*max(\sigma_{0}^2,\sigma_{TR}^2)}
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.10.3<-PBE(0.05,0.2,0.2,sqrt(0.17),sqrt(0.17),0.4,0.4,0.75,1.74,0.00,-0.2966)
Example.10.3
# 12

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
