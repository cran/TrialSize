\name{CrossOver.ISV.Equivalence}
\alias{CrossOver.ISV.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Similarity of Intra-Subject Variabilities in Crossover Design
}
\description{
the ratio = within-subject variance of treatment T / within-subject variance of treatment R  

H0: the ratio \eqn{ \ge \delta } or the ratio \eqn{ \le \frac{1}{\delta}}

Ha: \eqn{ \frac{1}{\delta}} < the ratio < \eqn{\delta}


}
\usage{
CrossOver.ISV.Equivalence(alpha, beta, sigma1, sigma2, m, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{sigma1}{
within-subject variance of treatment 1
}
  \item{sigma2}{
within-subject variance of treatment 2
}
 \item{m}{
for each subject, there are m replicates.
}
  \item{margin}{
margin= \eqn{\delta}, the true ratio of sigma1/sigma2
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

