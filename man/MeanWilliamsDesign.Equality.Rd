\name{MeanWilliamsDesign.Equality}
\alias{MeanWilliamsDesign.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Equality in Multiple-Sample William Design
}
\description{
Compare more than two treatment under a crossover design. 

H0: margin is equal to 0
Ha: margin is not equal to 0

The test is finding whether there is a difference between treatment i and treatment j

}
\usage{
MeanWilliamsDesign.Equality(alpha, beta, sigma, k, margin)
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
  \item{margin}{
\eqn{margin=\mu_i-\mu_j}
the difference between the true mean response of group i \eqn{\mu_i} and group j \eqn{\mu_j}

}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


\examples{
Example.3.5.4<-MeanWilliamsDesign.Equality(0.025,0.2,0.1,6,0.05)
Example.3.5.4 # 6
Example.3.5.4<-MeanWilliamsDesign.Equality(0.025,0.2,0.1,6,-0.05)
Example.3.5.4 # 6
Example.3.5.4<-MeanWilliamsDesign.Equality(0.025,0.2,0.1,6,-0.1)
Example.3.5.4 # 2

}
