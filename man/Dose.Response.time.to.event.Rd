\name{Dose.Response.time.to.event}
\alias{Dose.Response.time.to.event}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Linear Contrast Test for Time-to-Event Endpoint in dose response study

}
\description{
Under the exponential survival model, let lambdai be the proportion hazard rate for group i. 

H0: L(mu)=sum(ci*lambdai) =0

Ha: L(p)=sum(ci*lambdai)=epsilon > 0
}
\usage{
Dose.Response.time.to.event(alpha, beta, T0, T, Ti, ci, fi)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{T0}{
T0 is the accrual time period
}
  \item{T}{
T is the total trial duration
}
  \item{Ti}{
lambdai=log(2)/Ti, Ti is the estimated median time for each group. 
}
   \item{ci}{
a linear contrast coefficients ci with sum(ci)=0. 

}
  \item{fi}{
fi=ni/n is the sample size fraction for the ith group
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


\examples{
Example.11.3.1<-Dose.Response.time.to.event(alpha=0.05,beta=0.2,T0=9,T=16,Ti=c(14,20,22,24),ci=c(-6,1,2,3),fi=1/4)
Example.11.3.1
#412

Example.11.3.2<-Dose.Response.time.to.event(alpha=0.05,beta=0.2,T0=9,T=16,Ti=c(14,20,22,24),ci=c(-6,1,2,3),fi=c(1/9,2/9,2/9,2/9)
)
Example.11.3.2
#814

Example.11.3.3<-Dose.Response.time.to.event(alpha=0.05,beta=0.2,T0=9,T=16,Ti=c(14,20,22,24),ci=c(-6,1,2,3),fi=c(1/2.919,0.711/2.919,0.634/2.919,0.574/2.919)
)
Example.11.3.3
#349

## The function is currently defined as
function(alpha, beta,T0,T,Ti,ci,fi){
lambdai=log(2)/Ti
lambda_mean=mean(lambdai)
epsilon=sum(ci*lambdai)
sigma<-function(lambdai)
{
sigma2=sqrt(lambdai^2*(1+(exp(-lambdai*T)*(1-exp(lambdai*T0)))/(T0*lambdai))^(-1))
  }
sigma2=sigma(lambdai)
sigma0=sigma(lambda_mean)
n=(qnorm(1-alpha)*sigma0*sqrt(sum(ci^2/fi))+qnorm(1-beta)*sqrt(sum(ci^2*sigma2^2/fi)))^2/(epsilon^2)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
