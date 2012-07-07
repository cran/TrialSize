\name{gof.Pearson}
\alias{gof.Pearson}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test Goodness of Fit by Pearson's Test
}
\description{
Test the goodness of fit and the primary study endpoint is non-binary categorical response. pk=nk/n, nk is the frequency count of the subjects with response value k. pk,0 is a reference value. 

H0: pk=pk,0 for all k

Ha: not equal
}
\usage{
gof.Pearson(alpha, beta, pk, pk0, r)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{pk}{
pk is the proportion of each subject in treatment group.

}
  \item{pk0}{
pk0 is a reference value.
}
  \item{r}{
degree of freedom=r-1
}
}
\details{
(*) is  Chisquare_(r-1)(Chisqure_(alpha, r-1)|noncen)=beta
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
