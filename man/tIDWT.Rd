% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tIDWT.R
\name{tIDWT}
\alias{tIDWT}
\title{Inverse Wavelet Transform}
\usage{
tIDWT(tnsr)
}
\arguments{
\item{tnsr, }{a 3-mode tensor S3 class object}
}
\value{
S3 class tensor
}
\description{
Performs inverse of 3-mode tensor using any discrete wavelet transform.
}
\examples{
T <- t_rand(modes=c(2,3,4))
print(tIDWT(T))
}
\author{
Kyle Caudle

Randy Hoover

Jackson Cates

Everett Sandbo
}
