\name{Vaccine.RDI}
\alias{Vaccine.RDI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Reduction in Disease Incidence(RDI) for Vaccine clinical trials. 
}
\description{
The test is to find whether the vaccine can prevent the disease or reduce the incidence of the disease in the target population.  Usually use prospective, randomized, placebo-controlled trials. 
}
\usage{
Vaccine.RDI(alpha, d, pt, pc)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{alpha}{
significance level
}

  \item{d}{
the half length of the confidence interval of pt/pc
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
Example.15.6.1<-Vaccine.RDI(0.05,0.2,0.01,0.02)
Example.15.6.1
# 14214

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
