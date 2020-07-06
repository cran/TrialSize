\name{gof.Pearson.twoway}
\alias{gof.Pearson.twoway}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test Goodness of Fit by Pearson's Test for two-way table
}
\description{
H0: pk=pk,0 for all k

Ha: not equal
}
\usage{
gof.Pearson.twoway(alpha, beta, trt, ctl, r, c)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{trt}{
proportion of each subject in treatment group
}
  \item{ctl}{
proportion of each subject in control group
}
  \item{r}{
number of rows in the two-way table
}
  \item{c}{
number of column in the two-way table
}
}
\details{
(*) is   \eqn{\chi^{2}_{r-1}(\chi^{2}_{\alpha, r-1}|noncen)=\beta}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

