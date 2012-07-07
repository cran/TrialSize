\name{Propensity.Score.nostrata}
\alias{Propensity.Score.nostrata}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Propensity Score ignoring strata
}
\description{
Combining data across J strata. Still use weighted Mantel_Haenszel test.

H0: pj1=pj2, 

Ha: pj2*qj1/(pj1*qj2)=phi, which is not equal to 1
}
\usage{
Propensity.Score.nostrata(alpha, beta, J, a, b, p1, phi)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
     \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{J}{
There are totally J stratas. 
}
  \item{a}{
a=c(a1,a2,...,aJ), aj=nj/n denote the allocation proportion for stratuum j (sum(aj)=1)
}
  \item{b}{
b=c(b11,b21,...,bJ1), bjk=njk/nj, k=1,2 denote the allocation proportion for group k within stratum j (bj1+bj2=1). Assume group 1 is the control.
}
  \item{p1}{
p1=c(p11,p21,....,pj1), pjk denote the response probability for group k in stratum j. qjk=1-pjk.
}
  \item{phi}{
pj2*qj1/(pj1*qj2)=phi, so that pj2=phi*pj1/(qj1+phi*pj1)
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.15.2.3.2<-Propensity.Score.nostrata(0.05,0.2,5,c(0.15,0.15,0.2,0.25,0.25),c(0.4,0.4,0.5,0.6,0.6),c(0.5,0.6,0.7,0.8,0.9),2)
Example.15.2.3.2
# 1151

## The function is currently defined as
function(alpha, beta,J,a,b,p1,phi){
p2=phi*p1/(phi*p1+1-p1)

p1star=sum(a*b*p1)/sum(a*b)
p2star=sum(a*(1-b)*p2)/sum(a*(1-b))
pstar=sum(a*(b*p1+(1-b)*p2))

b1=sum(a*b)
b2=sum(a*(1-b))

sigma1star=p1star*(1-p1star)/b1+p2star*(1-p2star)/b2
sigma0star=pstar*(1-pstar)*(1/b1+1/b2)

n=(sqrt(sigma0star)*qnorm(1-alpha/2)+sqrt(sigma1star)*qnorm(1-beta))^2/(p1star-p2star)^2
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
