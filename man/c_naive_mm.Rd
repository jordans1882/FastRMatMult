\name{c_naive_mm}
\alias{c_naive_mm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to multiply two matrices (iterative algorithm)
}
\description{
An R wrapper to call in implementation of a triple for loop to multiply two matrices implemented in C. 
}
\usage{
c_naive_mm(A,B)
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
details%%  ~~ If necessary, more details than the description above ~~
}
\value{
\item{AB}{Matrix product of A and B}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
ref
}
\author{
Jordan Schupbach
}
\note{
note
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
r_naive_mm
f_naive_mm
}
\examples{
N = 1000
A <- matrix(rnorm(N*N), N, N)
B <- matrix(rnorm(N*N), N, N)
system.time(AB <- c_naive_mm(A,B))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
