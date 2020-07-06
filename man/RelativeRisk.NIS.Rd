\name{RelativeRisk.NIS}
\alias{RelativeRisk.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Relative Risk in Parallel Design test for Non-inferiority/Superiority
}
\description{
Ho: \eqn{OR \le margin}

Ha: OR > margin
}
\usage{
RelativeRisk.NIS(alpha, beta, or, k, pt, pc, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{or}{
or=pt(1-pc)/pc(1-pt)
}
  \item{k}{
k=nT/nC
}
  \item{pt}{
the probability of observing an outcome of interest for a patient treatment by a test treatment
}
  \item{pc}{
the probability of observing an outcome of interest for a patient treatment by a control
}
  \item{margin}{
the superiority or non-inferiority margin
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.6.4<-RelativeRisk.NIS(0.05,0.2,2,1,0.4,0.25,.2)
Example.4.6.4

}
