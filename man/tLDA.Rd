% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tLDA.R
\name{tLDA}
\alias{tLDA}
\title{Linear discriminate analysis (LDA) on a 3D tensor}
\usage{
tLDA(tnsr, nClass, nSamplesPerClass, tform)
}
\arguments{
\item{tnsr, }{a 3-mode tensor S3 class object}

\item{nClass, }{Number of classes}

\item{nSamplesPerClass, }{Samples in each class}

\item{tform, }{Any discrete transform.
fft: Fast Fourier Transorm

dwt: Discrete Wavelet Transform (Haar Wavelet)

dct: Discrete Cosine transform

dst: Discrete Sine transform

dht: Discrete Hadley transform

dwht: Discrete Walsh-Hadamard transform}
}
\value{
S3 class tensor
}
\description{
Linear discriminate analysis (LDA) on a 3D tensor
}
\examples{
data("Mnist")
T <- Mnist$train$images
myorder <- order(Mnist$train$labels)
# tLDA need to be sorted by classes
T_sorted <- T$data[,myorder,]
# Using small tensor, 2 images for each class for demonstration
T <- T_sorted[,c(1:2,1001:1002,2001:2002,3001:3002,4001:4002,
5001:5002,6001:6002,7001:7002,8001:8002,9001:9002),]
tLDA(as.Tensor(T),10,2,"dct")
}
\references{
Xanthopoulos, P., Pardalos, P. M., Trafalis, T. B., Xanthopoulos, P., Pardalos, P. M., & Trafalis, T. B. (2013). Linear discriminant analysis. Robust data mining, 27-33.
}
\author{
Kyle Caudle

Randy Hoover

Jackson Cates

Everett Sandbo
}
