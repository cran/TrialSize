\name{TwoSampleCrossOver.Equivalence}
\alias{TwoSampleCrossOver.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two Sample Crossover Design Test for Equivalence
}
\description{
Ho: \eqn{|margin| \ge delta }
Ha: |margin| < delta

This test is whether the test drug is equivalent to the control in average if the null hypothesis is rejected at significant level alpha


}
\usage{
TwoSampleCrossOver.Equivalence(alpha, beta, sigma, delta, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation in crossover design

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
Example.3.3.4<-TwoSampleCrossOver.Equivalence(0.05,0.1,0.2,0.25,-0.1)
Example.3.3.4 # 8


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
