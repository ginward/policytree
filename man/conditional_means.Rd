% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/causal_forest-scores.R,
%   R/instrumental_forest-scores.R, R/multi_causal_forest-scores.R, R/scores.R
\name{conditional_means.causal_forest}
\alias{conditional_means.causal_forest}
\alias{conditional_means.instrumental_forest}
\alias{conditional_means.multi_causal_forest}
\alias{conditional_means}
\title{Estimate mean rewards \eqn{\mu} for each treatment \eqn{a}}
\usage{
\method{conditional_means}{causal_forest}(object, ...)

\method{conditional_means}{instrumental_forest}(object, ...)

\method{conditional_means}{multi_causal_forest}(object, ...)

conditional_means(object, ...)
}
\arguments{
\item{object}{An appropriate causal forest type object}

\item{...}{Additional arguments}
}
\value{
A matrix of estimated mean rewards
}
\description{
\eqn{\mu_a = m(x) + (1-e_a(x))\tau_a(x)}
}
\section{Methods (by class)}{
\itemize{
\item \code{causal_forest}: Mean rewards \eqn{\mu} for control/treated

\item \code{instrumental_forest}: Mean rewards \eqn{\mu} for control/treated

\item \code{multi_causal_forest}: Mean rewards \eqn{\mu} for each treatment \eqn{a}
}}

\examples{
\dontrun{
n <- 500
p <- 10
d <- 3
X <- matrix(runif(n * p), n, p)
Y <- runif(n)
W <- sample(1:d, n, replace = TRUE)
forests <- multi_causal_forest(X = X, Y = Y, W = W)
conditional_means(forests)
}
}
\keyword{internal}
