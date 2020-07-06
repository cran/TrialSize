\name{CrossOver.ISV.NIS}
\alias{CrossOver.ISV.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Non-Inferiority/Superiority of Intra-Subject Variabilitie in Crossover Design
}
\description{

H0: the ratio that within-subject variance of treatment T / within-subject variance of treatment R \eqn{ \ge \delta }

Ha: the ratio < \eqn{\delta}

if \eqn{\delta} < 1, the rejection of Null Hypothesis indicates the superiority of the test drug over the reference for the intra-subject variability; 

if \eqn{\delta} > 1, the rejection of the null hypothesis implies the non-inferiority of the test drug against the reference for the intra-subject variability; .
}
\usage{
CrossOver.ISV.NIS(alpha, beta, sigma1, sigma2, m, margin)
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
margin=\eqn{\delta}, the true ratio of sigma1/sigma2
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.9.1.1<-CrossOver.ISV.NIS(0.05,0.2,0.3^2,0.45^2,2,1.1)
Example.9.1.1


}
