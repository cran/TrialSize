\name{MeanWilliamsDesign.NIS}
\alias{MeanWilliamsDesign.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Non-Inferiority/Superiority in Multiple-Sample William Design
}
\description{
Compare more than two treatment under a crossover design. 

H0: margin \eqn{ \le \delta }
Ha: margin >  \eqn{\delta}

if \eqn{\delta} >0, the rejection of Null Hypothesis indicates the superiority of the test over the control; 

if \eqn{\delta} <0, the rejection of the null hypothesis implies the non-inferiority of the test against the control.
}
\usage{
MeanWilliamsDesign.NIS(alpha, beta, sigma, k, delta, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation

}
  \item{k}{ Total k treatments in the design

}


 \item{delta}{ the superiority or non-inferiority margin
}


  \item{margin}{
\eqn{margin=\mu_i-\mu_j}
the difference between the true mean response of group i \eqn{\mu_i} and group j \eqn{\mu_j}

}


}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

