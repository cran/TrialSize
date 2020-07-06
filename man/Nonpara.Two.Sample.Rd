\name{Nonpara.Two.Sample}
\alias{Nonpara.Two.Sample}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Two sample location problem for Nonparametric
}
\description{
Ho: theta=0; 

Ha: theta is not equal to 0. 
}
\usage{
Nonpara.Two.Sample(alpha, beta, k, p1, p2, p3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level
}
  \item{beta}{ power = 1-beta
}
  \item{k}{
k=n1/n2
}
  \item{p1}{
\eqn{p1=P(y_i \ge x_j)}
}
  \item{p2}{
\eqn{p2=P(y_i \ge x_{j1} ~and~ y_{i} \ge x_{j2})}
}
  \item{p3}{
\eqn{p3=P(y_{i1} \ge x_j ~and~ y_{i2} \ge x_{j})}
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.14.3<-Nonpara.Two.Sample(0.05,0.2,1,0.7,0.8,0.8)
Example.14.3
#54

}
