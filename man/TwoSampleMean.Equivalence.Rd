\name{TwoSampleMean.Equivalence}
\alias{TwoSampleMean.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two Sample Mean Test for Equivalence
}
\description{
Ho: \eqn{|margin| \ge delta }
Ha: |margin| < delta

This test is whether the test drug is equivalent to the control in average if the null hypothesis is rejected at significant level alpha
}
\usage{
TwoSampleMean.Equivalence(alpha, beta, sigma, k, delta, margin)
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

  \item{delta}{
the superiority or non-inferiority margin
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

Example.3.2.4<-TwoSampleMean.Equivalence(0.1,0.1,0.1,1,0.05,0.01)
Example.3.2.4 #107

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
