\name{Nonpara.One.Sample}
\alias{Nonpara.One.Sample}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One Sample Location problem in Nonparametric
}
\description{
Ho: theta=0

Ha: theta is not equal to 0. 
}
\usage{
Nonpara.One.Sample(alpha, beta, p2, p3, p4)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{ significance level
}
  \item{beta}{ power = 1-beta
}
  \item{p2}{
\eqn{p2=P(|z_i|>=|z_j|,z_i>0)}
}
  \item{p3}{
\eqn{p3=P(|z_i|>=|z_{j1}|,|z_i|>=|z_{j2}|,z_i>0)}
}
  \item{p4}{
\eqn{p4=P(|z_{j1}|>=|z_i|>=|z_{j2}|,z_{j1}>0,z_i>0)}
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.14.2<-Nonpara.One.Sample(0.05,0.2,0.3,0.4,0.05)
Example.14.2
# 383

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
