\name{Dose.Response.time.to.event}
\alias{Dose.Response.time.to.event}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Linear Contrast Test for Time-to-Event Endpoint in dose response study

}
\description{
Under the exponential survival model, let lambdai be the proportion hazard rate for group i. 

\eqn{\sum ci = 0}.

Ho: \eqn{ L(\mu) = \sum ci \times \lambda_i =0 }

Ha: \eqn{ L(p) = \sum ci \times \lambda_i = \epsilon  > 0 }
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
\eqn{\lambda_i=log(2)/Ti}, Ti is the estimated median time for each group. 
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


Ti=c(14,20,22,24);
ci=c(-6,1,2,3);

Example.11.3.1<-Dose.Response.time.to.event(alpha=0.05,beta=0.2,T0=9,T=16,Ti=Ti,ci=ci,fi=1/4)
Example.11.3.1
#412

fi1=c(1/9,2/9,2/9,2/9);
Example.11.3.2<-Dose.Response.time.to.event(alpha=0.05,beta=0.2,T0=9,T=16,Ti=Ti,ci=ci,fi=fi1)
Example.11.3.2
#814

fi2=c(1/2.919,0.711/2.919,0.634/2.919,0.574/2.919);
Example.11.3.3<-Dose.Response.time.to.event(alpha=0.05,beta=0.2,T0=9,T=16,Ti=Ti,ci=ci,fi=fi2)
Example.11.3.3
#349

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
