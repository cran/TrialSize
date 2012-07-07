\name{OneSide.varyEffect}
\alias{OneSide.varyEffect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One-Sided Tests with varying effect sizes
}
\description{
One-sided tests 

H0: delta_j = 0

Ha: delta_j > 0 

}
\usage{
OneSide.varyEffect(s1, s2, m, m1, delta, a1, r1, fdr)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{s1}{
We use bisection method to find the sample size, which let the equation h(n)=0. Here s1 and s2 are the initial value, 0<s1<s2. h(s1) should be smaller than 0. 

}
  \item{s2}{
s2 is also the initial value, which is larger than s1 and h(s2) should be larger than 0. 
}
  \item{m}{
m is the total number of multiple tests
}
  \item{m1}{
m1 = m - m0. m0 is the number of tests which the null hypotheses are true ;
m1 is the number of tests which the alternative hypotheses are true. (or m1 is the number of prognostic genes)
}
  \item{delta}{
delta_j is the varying effect size for jth test. delta_j=(E(Xj)-E(Yj))/sigma_j.
Xij(Yij) denote the expression level of gene j for subject i in group 1( and group 2, respectively) with common variance sigma_j^2. We assume {delta_j=0, j in M0} and {delta_j >0, j in M1}=effect size for prognostic genes. 
}
  \item{a1}{
a1 is the allocation proportion for group 1. a2=1-a1.
}
  \item{r1}{
r1 is the number of true rejection
}
  \item{fdr}{
fdr is the FDR level.
}
}
\details{
alpha_star=r1*fdr/((m-m1)*(1-fdr)), which is the marginal type I error level for r1 true rejection with the FDR controlled at f. 

beta_star=1-r1/m1, which is equal to 1-power.
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.12.2.2 <- OneSide.varyEffect(s1=100,s2=150,m=4000, m1=40, delta=c(rep(1,40/2),rep(1/2,40/2)),a1=0.5,r1=24,fdr=0.01)
Example.12.2.2
# n=148 s1<n<s2, h(s1)<0,h(s2)<0


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
