\name{Vaccine.ELDI}
\alias{Vaccine.ELDI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The evaluation of vaccine efficacy with Extremely Low Disease Incidence(ELDI)
}
\description{
If the disease incidence rate is extremely low, the number of cases in the vaccine group given the total number of cases is distributed as a binomial random variable with parameter theta. 

Ho: \eqn{\theta  \ge \theta_{0}}

Ha: \eqn{\theta  <  \theta_{0}}

}
\usage{
Vaccine.ELDI(alpha, beta, theta0, theta, pt, pc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{alpha}{
significance level
}
  \item{beta}{
power=1-beta
}
  \item{theta0}{
the true parameter for binomial distribution. Theta0 is usually equal to 0.5
}
  \item{theta}{
theta=disease rate for treatment group/(disease rate for treatment group + for control group)
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
Example.15.6.2<-Vaccine.ELDI(0.05,0.2,0.5,1/3,0.001,0.002)
Example.15.6.2
# 17837

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
