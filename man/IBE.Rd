\name{IBE}
\alias{IBE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Individual Bioequivalence
}
\description{
Consider 2 by 2 crossover design. gamma=delta^2+sigmaD^2+sigmaWT^2-sigmaWR^2-thetaIBE*max(sigma0^2,sigmaWR^2) 

H0: gamma >= 0

Ha: gamma <  0

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
Example.10.4<-IBE(alpha=0.05, beta=0.2,delta=0, sigmaD=0.2,sigmaWT=0.3,sigmaWR=0.3,a=0.5,b=0.5,thetaIBE=2.5)
Example.10.4

# n=22 IBE reach 0 



## The function is currently defined as
function(alpha, beta,delta, sigmaD,sigmaWT,sigmaWR,a,b,thetaIBE){
Sigma<-function(sigmaD,sigmaWT,sigmaWR,a,b)
{
Sigma=sigmaD^2+a*sigmaWT^2+b*sigmaWR^2
  }


U<-function(n,alpha, beta,delta, sigmaD,sigmaWT,sigmaWR,a,b,thetaIBE)
{
U=((abs(delta)+qt(alpha,2*n-2)*Sigma(sigmaD,sigmaWT,sigmaWR,0.5,0.5)*sqrt(2/n)/2)^2-delta^2)^2
+Sigma(sigmaD,sigmaWT,sigmaWR,0.5,0.5)^4*((2*n-2)/qchisq(1-alpha, 2*n-2)-1)^2
+0.5^2*sigmaWT^4*((2*n-2)/qchisq(1-alpha, 2*n-2)-1)^2
+(1.5+thetaIBE)^2*sigmaWR^4*((2*n-2)/qchisq(alpha, 2*n-2)-1)^2
  }

gamma=delta^2+sigmaD^2+sigmaWT^2-sigmaWR^2-thetaIBE*sigmaWR^2
for (i in 1:1000){
bound=gamma+sqrt(U(i,alpha, 0.05,delta, sigmaD,sigmaWT,sigmaWR,a,b,thetaIBE))
+sqrt(U(i,alpha, beta,delta, sigmaD,sigmaWT,sigmaWR,a,b,thetaIBE))
print(c(i,bound))
  }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line