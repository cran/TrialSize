\name{TwoSampleCrossOver.NIS}
\alias{TwoSampleCrossOver.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two Sample Crossover Design Test for Non-Inferiority/Superiority
}
\description{
H0: margin <= delta
Ha: margin >  delta 

if delta >0, the rejection of Null Hypothesis indicates the superiority of the test over the control; 

if delta <0, the rejection of the null hypothesis implies the non-inferiority of the test against the control. 

}
\usage{
TwoSampleCrossOver.NIS(alpha, beta, sigma, delta, margin)
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
margin=mu2-mu1

the true mean difference between a test mu2 and a control mu1

}


}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.3.3.4<-TwoSampleCrossOver.NIS(0.05,0.2,0.2,-0.2,-0.1)
Example.3.3.4 # 13
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
