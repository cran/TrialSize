\name{TwoSampleCrossOver.Equality}
\alias{TwoSampleCrossOver.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two Sample Crossover Design Test for Equality
}
\description{
Ho: margin is equal to 0
Ha: margin is unequal to 0 

The test is finding whether there is a difference between the mean responses of the test group and control group.

}
\usage{
TwoSampleCrossOver.Equality(alpha, beta, sigma, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation in crossover design

}
  \item{margin}{
\eqn{margin=\mu_2-\mu_1}

the true mean difference between a test mu2 and a control mu1

}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


