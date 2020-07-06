\name{Propensity.Score.strata}
\alias{Propensity.Score.strata}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Propensity Score with Stratas
}
\description{
Using weighted Mantel_Haenszel test in propensity analysis with stratas.

Ho: \eqn{p_{j1}=p_{j2}}, 

Ha: \eqn{p_{j2} q_{j1}/(p_{j1} q_{j2})}=phi, which is not equal to 1
}
\usage{
Propensity.Score.strata(alpha, beta, J, a, b, p1, phi)
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
\eqn{p_{j2} q_{j1}/(p_{j1} q_{j2})}=phi, so that \eqn{p_{j2} = phi p_{j1} /( q_{j1}+ phi p_{j1})}
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
a=c(0.15,0.15,0.2,0.25,0.25);
b=c(0.4,0.4,0.5,0.6,0.6);
p1=c(0.5,0.6,0.7,0.8,0.9);

Example.15.2.3.1<-Propensity.Score.strata(alpha=0.05,beta=0.2,J=5,a,b,p1,phi=2)
Example.15.2.3.1
# 447

}
