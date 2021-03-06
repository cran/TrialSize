\name{ANOVA.Repeat.Measure}
\alias{ANOVA.Repeat.Measure}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
ANOVA with Repeat Measures
}
\description{

The study has multiple assessments in a parallel-group clinical trial. \eqn{\alpha_i} is the fixed effect for the ith treatment \eqn{\sum \alpha_i =0}.

Ho: \eqn{\alpha_{i} = \alpha_{i'} }

Ha: not equal

}
\usage{
ANOVA.Repeat.Measure(alpha, beta, sigma, delta, m)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
     \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{sigma}{
sigma^2 is the sum of the variance components.
}
  \item{delta}{
a clinically meaningful difference
}
  \item{m}{
Bonferroni adjustment for alpha, totally m pairs comparison.
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


\examples{
Example.15.3.4<-ANOVA.Repeat.Measure(0.05,0.2,1.25,1.5,3)
Example.15.3.4
# 15
}
