\name{TwoSampleMean.Equality}
\alias{TwoSampleMean.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two Sample Mean Test for Equality
}
\description{
H0: margin is equal to 0
Ha: margin is unequal to 0 

The test is finding whether there is a difference between the mean responses of the test group and control group.

}
\usage{
TwoSampleMean.Equality(alpha, beta, sigma, k, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ pooled standard deviation of two groups
}


  \item{k}{
k=n1/n2

Example: k=2 indicates a 1 to 2 test-control allocation.

}
  \item{margin}{
\eqn{margin=\mu_2-\mu_1}

the true mean difference between a test mu2 and a control mu1
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{

Example.3.2.4<-TwoSampleMean.Equality(0.05,0.2,0.1,1,0.05)
Example.3.2.4 # 63

}
