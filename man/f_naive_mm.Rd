\name{f_naive_mm}
\alias{f_naive_mm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to multiply two matrices (iterative algorithm)
}
\description{
An R wrapper to call in implementation of a triple for loop to multiply two matrices implemented in Fortran. 
}
\usage{
f_naive_mm(A, B)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
Matrix A
}
  \item{B}{
Matrix B
}
}
\details{
details
%%  ~~ If necessary, more details than the description above ~~
}
\value{
\item{AB}{Matrix product of A and B}
}
\references{
http://en.wikipedia.org/wiki/Matrix_multiplication_algorithm
}
\author{
Jordan Schupbach
}
\note{
R implementation
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
c_naive_mm and r_naive_mm
}
\examples{
N = 1000
A <- matrix(rnorm(N*N), N, N)
B <- matrix(rnorm(N*N), N, N)
system.time(AB <- f_naive_mm(A,B))
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
