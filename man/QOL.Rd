\name{QOL}
\alias{QOL}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Quality of life

}
\description{

Under the time series model, determine sample size based on normal approximation.
}
\usage{
QOL(alpha, beta, c, epsilon)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
      \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{c}{
constant c=0.5
}
  \item{epsilon}{
a meaningful difference epsilon. If the chosen acceptable limits are \eqn{(-\delta, \delta)}. \eqn{epsilon=\delta-\eta}, \eqn{\eta} is the measure for detecting an equivalence when the true difference in treatment means is less than a small constant \eqn{\eta}. 
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.15.4.3<-QOL(0.05,0.1,0.5,0.25)
Example.15.4.3

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
