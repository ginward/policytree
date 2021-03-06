% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\name{gen_data_epl}
\alias{gen_data_epl}
\title{Example data generating process from Efficient Policy Learning}
\usage{
gen_data_epl(n, type = c("continuous", "jump"))
}
\arguments{
\item{n}{Number of observations}

\item{type}{tau is "continuous" (default - equation 54) or exhibits "jumps" (equation 55)}
}
\value{
A list
}
\description{
The DGP from section 5.2 in Athey and Wager (2017)
}
\references{
Athey, Susan, and Stefan Wager. "Efficient policy learning." arXiv preprint arXiv:1702.02896 (2017).
}
