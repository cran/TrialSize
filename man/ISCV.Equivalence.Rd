\name{ISCV.Equivalence}
\alias{ISCV.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Equivalence of Intra-Subject CVs
}
\description{

H0: |CVr - CVt| \eqn{ \ge \delta }

Ha: |CVr - CVt|  < \eqn{\delta}

}
\usage{
ISCV.Equivalence(alpha, beta, CVt, CVr, m, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{CVt}{
Coefficient Of Variation for treatment T
}
  \item{CVr}{
Coefficient Of Variation for treatment R
}
   \item{m}{
for each subject, there are m replicates.
}
  \item{margin}{
margin=delta, 
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

