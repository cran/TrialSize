\name{OneSampleMean.Equivalence}
\alias{OneSampleMean.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One Sample Mean Test for Equivalence
}
\description{
Ho: \eqn{|margin| \ge delta }
Ha: |margin| < delta

The test is concluded to be equivalent to a gold standard on average if the null hypothesis is rejected at significance level alpha

}
\usage{
OneSampleMean.Equivalence(alpha, beta, sigma,margin, delta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation

}
  \item{margin}{
\eqn{margin=\bar{x}-\mu_0}

the difference between the true mean response of a test \eqn{\bar{x}}  and a reference value  \eqn{\mu_0}


}
  \item{delta}{ the superiority or non-inferiority margin

}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


\examples{
Example.3.1.4<-OneSampleMean.Equivalence(0.05,0.2,0.1,0.05,0) 
Example.3.1.4   # 35
}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
