\name{RelativeRisk.Equivalence}
\alias{RelativeRisk.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Relative Risk in Parallel Design test for Equivalence 
}
\description{
Ho: \eqn{|log(OR)| \ge margin }

Ha: |log(OR)| < margin
}
\usage{
RelativeRisk.Equivalence(alpha, beta, or, k, pt, pc, margin)
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
Example.4.6.4<-RelativeRisk.Equivalence(0.05,0.2,2,1,0.25,0.25,.5)
Example.4.6.4

}
