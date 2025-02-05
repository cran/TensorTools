% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as.Tensor.R
\name{as.Tensor}
\alias{as.Tensor}
\title{Converts an array to an S3 tensor}
\usage{
as.Tensor(t)
}
\arguments{
\item{t}{Numeric, array of numbers}
}
\value{
S3 class tensor
}
\description{
This will converts array to S3 object tensor.  Vectors and matrices must first be converted to an array before applying as.Tensor.
}
\examples{
indices <- c(2,3,4)
arr <- array(runif(prod(indices)), dim = indices)
arrT <- as.Tensor(arr); arrT
}
\author{
Kyle Caudle

Randy Hoover

Jackson Cates

Everett Sandbo
}
