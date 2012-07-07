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
sigma_a.b^2=sigmaD^2+a*sigmaWT^2+b*sigmaWR^2. Here a=b=1.
}
  \item{sigmatt}{
sigmatt^2=sigmaBT^2+sigmaWT^2,  sigmawt^2 is the within-subjects variance in test formulation 

}
  \item{sigmatr}{
sigmatr^2=sigmaBR^2+sigmaWR^2,  sigmawr^2 is the within-subjects variance in reference formulation 
}
  \item{sigmabt}{
sigmabt^2 is the between-subjects variance in test formulation
}
  \item{sigmabr}{
sigmabr^2 is the between-subjects variance in reference formulation

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
lamda=delta^2+sigmaTT^2-sigmaTR^2-thetaPBE*max(sigma0^2,sigmaTR^2)
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.10.3<-PBE(0.05,0.2,0.2,sqrt(0.17),sqrt(0.17),0.4,0.4,0.75,1.74,0.00,-0.2966)
Example.10.3
# 12

## The function is currently defined as
function(alpha, beta, sigma1.1,sigmatt,sigmatr,sigmabt,sigmabr,rho,a,delta,lamda){

temp=2*delta^2*sigma1.1^2+sigmatt^4+(1+a)^2*sigmatr^4-2*(1+a)*rho^2*sigmabt^2*sigmabr^2
n=temp*(qnorm(1-alpha)+qnorm(1-beta))^2/(lamda^2)
return(n)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
