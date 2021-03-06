% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/causal_forest-scores.R,
%   R/instrumental_forest-scores.R, R/multi_causal_forest-scores.R, R/scores.R
\name{double_robust_scores.causal_forest}
\alias{double_robust_scores.causal_forest}
\alias{double_robust_scores.instrumental_forest}
\alias{double_robust_scores.multi_causal_forest}
\alias{double_robust_scores}
\title{Matrix \eqn{\Gamma} of scores for each treatment \eqn{a}}
\usage{
\method{double_robust_scores}{causal_forest}(object, ...)

\method{double_robust_scores}{instrumental_forest}(object, compliance.score = NULL, ...)

\method{double_robust_scores}{multi_causal_forest}(object, ...)

double_robust_scores(object, ...)
}
\arguments{
\item{object}{An appropriate causal forest type object}

\item{...}{Additional arguments}

\item{compliance.score}{An estimate of the causal effect of Z on W.
i.e., Delta(X) = E(W | X, Z = 1) - E(W | X, Z = 0), for each sample i = 1, ..., n. If NULL (default)
then this is estimated with a causal forest.}
}
\value{
A matrix of scores for each treatment
}
\description{
Computes a matrix of double robust scores
\eqn{\Gamma_{ia} = \mu_a(x) + \frac{1}{e_a(x)} (Y_i - \mu_a(x)) 1(A_i=a)}
}
\details{
This is the matrix used for CAIPWL (Cross-fitted Augmented Inverse Propensity Weighted Learning)
}
\section{Methods (by class)}{
\itemize{
\item \code{causal_forest}: Scores \eqn{(\Gamma_0, \Gamma_1)}

\item \code{instrumental_forest}: Scores \eqn{(-\Gamma, \Gamma)}

\item \code{multi_causal_forest}: Matrix \eqn{\Gamma} of scores for each treatment \eqn{a}
}}

\note{
For instrumental_forest this method returns \eqn{(-\Gamma_i, \Gamma_i)} where \eqn{\Gamma_i}
is the double robust estimator of the treatment effect as in eqn. (52) in Athey and Wager (2017).
}
\examples{
\dontrun{
n <- 500
p <- 10
d <- 3
X <- matrix(runif(n * p), n, p)
Y <- runif(n)
W <- sample(1:d, n, replace = TRUE)
forests <- multi_causal_forest(X = X, Y = Y, W = W)
double_robust_scores(forests)
}
}
\references{
Athey, Susan, and Stefan Wager. "Efficient policy learning." arXiv preprint arXiv:1702.02896 (2017).
}
