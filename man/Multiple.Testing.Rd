\name{Multiple.Testing}
\alias{Multiple.Testing}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Multiple Testing procedures
}
\description{
Ho: \eqn{ \mu_{1j}-\mu_{2j} = 0 }

Ha: \eqn{ \mu_{1j}-\mu_{2j} > 0 }
}
\usage{
Multiple.Testing(s1, s2, m, p, D, delta, BCS, pho, K, alpha, beta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{s1}{
We use bisection method to find the sample size, which let the equation h(n)=0. Here s1 and s2 are the initial value, 0 < s1 < s2. h(s1) should be smaller than 0. 

}
  \item{s2}{
s2 is also the initial value, which is larger than s1 and h(s2) should be larger than 0. 
}
  \item{m}{
m is the total number of multiple tests
}
  \item{p}{
p=n1/n. n1 is the sample size for group 1, n2 is the sample size for group 2, n=n1+n2. 
}
  \item{D}{
D is the number of predictive genes. 
}
  \item{delta}{
\eqn{ \delta_j } is the fix effect size among the predictive genes. We assume \eqn{ \delta_j = delta, j =1,...,D} and \eqn{\delta_j =0, j =D+1,....,m}.
}
  \item{BCS}{
BCS means block compound symmetry, which is the length of each blocks. If we only have one block, BCS=m, which is refer to compound symmetry(CS).
}
  \item{pho}{
pho is the correlation parameter. If j and j' in the same block, \eqn{\rho_{jj'}=pho} ; otherwise \eqn{\rho_{jj'} = 0 }. 
}
  \item{K}{
K is the number of replicates for the simulation.
}
  \item{alpha}{
here alpha is the adjusted Familywise error rate (FWER)
}
  \item{beta}{
here power is a global power. power=1-beta
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}
