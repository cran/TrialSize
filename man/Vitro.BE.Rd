\name{Vitro.BE}
\alias{Vitro.BE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
In Vitro Bioequivalence
}
\description{
Consider 2 by 2 crossover design. zeta=delta^2+sT^2+sR^2-thetaBE*max(sigma0^2,sR^2) . sT^2=sigmaBT^2+sigmaWT^2, sR^2=sigmaBR^2+sigmaWR^2

H0: zeta >= 0

Ha: zeta <  0
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
sigmaBT^2 is the between-subjects variance in test formulation
}
  \item{sigmaBR}{
sigmaBR^2 is the between-subjects variance in reference formulation
}
   \item{sigmaWT}{
sigmaWT^2 is the within-subjects variance in test formulation
}
  \item{sigmaWR}{
sigmaWR^2 is the within-subjects variance in reference formulation
}
  \item{thetaBE}{
here thetaBE=1 
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.10.5<-Vitro.BE(alpha=0.05, beta=0.2,delta=0, sigmaBT=0.5,sigmaBR=0.5,sigmaWT=0.5,sigmaWR=0.5,thetaBE=1)
Example.10.5

# n=43 Vitro.BE reach 0

## The function is currently defined as
function(alpha, beta,delta, sigmaBT,sigmaBR,sigmaWT,sigmaWR,thetaBE){

U<-function(m,n,alpha, beta,delta, sigmaBT,sigmaBR,sigmaWT,sigmaWR,thetaBE)
{
U=((abs(delta)+qnorm(alpha)*sqrt(sigmaBT^2/m+sigmaBR^2/m))^2-delta^2)^2
+(sigmaBT^2+sigmaWT^2)^2*((m-1)/qchisq(1-alpha, m-1)-1)^2
+(1+thetaBE)^2*(sigmaBR^2+sigmaWR^2)^2*((m-1)/qchisq(alpha, m-1)-1)^2
  }

sigmaT=sqrt(sigmaBT^2+sigmaWT^2)
sigmaR=sqrt(sigmaBR^2+sigmaWR^2)

gamma=delta^2+sigmaT^2-sigmaR^2-thetaBE*sigmaR^2

for (i in 1:1000){
bound=gamma+sqrt(U(i,1,alpha, 0.05,delta, sigmaBT,sigmaBR,sigmaWT,sigmaWR,thetaBE))
+sqrt(U(i,1,alpha, beta,delta, sigmaBT,sigmaBR,sigmaWT,sigmaWR,thetaBE))
print(c(i,bound))
  }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
