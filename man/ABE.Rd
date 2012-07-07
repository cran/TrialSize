\name{ABE}
\alias{ABE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Average Bioequivalence
}
\description{
The most commonly used design for ABE is a standard two-sequence and two-period crossover design. Ft is the fixed effect of the test formulation and Fr is the fixed effect of the reference formulation. 

H0: Ft-Fr <= delta_L or Ft-Fr <= delta_U

Ha: delta_L < Ft-Fr < delta_U

}
\usage{
ABE(alpha, beta, sigma1.1, delta, epsilon)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
     \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma1.1}{
sigma_a.b^2=sigmaD^2+a*sigmaWT^2+b*sigmaWR^2. Here a=b=1.
}
  \item{delta}{
delta is the bioequivalence limit. here delta=0.223
}
  \item{epsilon}{
epsilon=Ft-Fr
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.10.2<-ABE(0.05,0.2,0.4,0.223,0.05)
Example.10.2
# 21

## The function is currently defined as
function(alpha, beta, sigma1.1,delta,epsilon){

n=(sigma1.1)^2*(qnorm(1-alpha/2)+qnorm(1-beta))^2/(2*(delta-abs(epsilon))^2)

  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
