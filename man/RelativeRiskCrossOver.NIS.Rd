\name{RelativeRiskCrossOver.NIS}
\alias{RelativeRiskCrossOver.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Relative Risk in Crossover Design test for Non-inferiority/Superiority
}
\description{
Ho: \eqn{log(OR) \le margin }
 
Ha: log(OR) >  margin
}
\usage{
RelativeRiskCrossOver.NIS(alpha, beta, sigma, or, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{
standard deviation in crossover design
}
  \item{or}{
or=pt(1-pc)/pc(1-pt)
}
  \item{margin}{
the superiority or non-inferiority margin
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

