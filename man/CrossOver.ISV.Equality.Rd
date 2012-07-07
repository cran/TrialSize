\name{CrossOver.ISV.Equality}
\alias{CrossOver.ISV.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Test for Equality of Intra-Subject Variabilities in Crossover Design 
}
\description{

H0: within-subject variance of treatment T  is equal to within-subject variance of treatment R 

Ha: not equal  

The test is finding whether two drug products have the same intra-subject variability in crossover design
}
\usage{
CrossOver.ISV.Equality(alpha, beta, sigma1, sigma2, m)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
   \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{sigma1}{
within-subject variance of treatment 1
}
  \item{sigma2}{
within-subject variance of treatment 2
}
  \item{m}{
for each subject, there are m replicates.
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
