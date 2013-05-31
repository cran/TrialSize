\name{TwoSampleMean.NIS}
\alias{TwoSampleMean.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two Sample Mean Test for Non-Inferiority/Superiority
}
\description{
Ho: \eqn{ margin \le delta }
Ha: margin > delta

if delta >0, the rejection of Null Hypothesis indicates the superiority of the test over the control; 

if delta <0, the rejection of the null hypothesis implies the non-inferiority of the test against the control. 

}
\usage{
TwoSampleMean.NIS(alpha, beta, sigma, k, delta, margin)
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

 \item{delta}{ the superiority or non-inferiority margin
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
Example.3.2.4<-TwoSampleMean.NIS(0.05,0.2,0.1,1,-0.05,0)
Example.3.2.4 # 50

  }

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
