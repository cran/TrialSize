\name{Vaccine.CEM}
\alias{Vaccine.CEM}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Composite Efficacy Measure(CEM) for Vaccine clinical trials. 
}
\description{
Let sij be the severity score associated with the jth case in the ith treatment group. mu_i=mean(sij), sigma^2_i=var(sij). 

H0: pT=pC and muT=muC

Ha: pT is not equal to pC and muT is not equal to muC

}
\usage{
Vaccine.CEM(alpha, beta, mu_t, mu_c, sigma_t, sigma_c, pt, pc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{
significance level
}
  \item{beta}{
power=1-beta
}
  \item{mu_t}{
mean of treatment group
}
  \item{mu_c}{
mean of control group
}
  \item{sigma_t}{
standard deviation of treatment group
}
  \item{sigma_c}{
standard deviation of control group
}
  \item{pt}{
the true disease incidence rates of the nt vaccines
}
  \item{pc}{
the true disease incidence rates of the nc controls
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


\examples{
Example.15.6.4<-Vaccine.CEM(0.05,0.2,0.2,0.3,sqrt(0.15),sqrt(0.15),0.1,0.2)
Example.15.6.4


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
