\name{Dose.Response.Linear}
\alias{Dose.Response.Linear}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Linear Contrast Test for Dose Response Study
}
\description{
For a multi-arm dose response design, we use a linear contrast coefficients ci with \eqn{\sum ci = 0}.

H0: L(mu)=\eqn{\sum ci \times \mu_i = 0}

Ha: L(mu)=\eqn{\sum ci \times \mu_i = \epsilon}, not equal to 0

}
\usage{
Dose.Response.Linear(alpha, beta, sigma, mui, ci, fi)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{
standard deviation for the population
}
  \item{mui}{
mui is the population mean for group i. 
}
  \item{ci}{
a linear contrast coefficients ci with \eqn{\sum ci = 0}. 

}
  \item{fi}{
fi=ni/n is the sample size fraction for the ith group
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{

mui=c(0.05,0.12,0.14,0.16);
ci=c(-6,1,2,3);

Example.11.1<-Dose.Response.Linear(alpha=0.05,beta=0.2,sigma=0.22,mui=mui,ci=ci,fi=1/4)
Example.11.1
#178

}
