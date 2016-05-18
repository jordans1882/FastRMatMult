
## GPU Installation Guide:
## http://rstudio-pubs-static.s3.amazonaws.com/76831_0710fb114a704200886af1a4b8b8a020.html#/9

# Sys.getenv()
# Sys.setenv(LD_LIBRARY_PATH ="/usr/local/cuda-7.0/lib64:/usr/lib/R/lib:/lib:/usr/lib/x86_64-linux-gnu:/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/amd64/server")
# Sys.setenv(CUDA_HOME="/usr/local/cuda/lib64")

# sudo ldconfig /usr/local/cuda/lib64

library(gputools)

library(FastRMatMult)
library(compiler)
library(parallel)
library(snow)
n <- 2000
a <- matrix(rnorm(n*n), n, n)
b <- matrix(rnorm(n*n), n, n)

mat_mult_cmp <- cmpfun(r_naive_mm)

system.time(c <- r_naive_mm(a,b))
system.time(c <- mat_mult_cmp(a, b))
system.time(c <- f_naive_mm(a,b))
system.time(c <- c_naive_mm(a,b))
system.time(c <- mat_mult_par(a,b))
system.time(c <- a %*% b)

# system.time(c <- gpuMatMult(a,b))
# 
# 

system.time(ainv <- solve(a))


# system.time(ainv <- gpuSolve(a))
# > system.time(ainv <- gpuSolve(a))
# Error in gpuSolve(a) : out of memory
# In addition: Warning message:
#   In gpuSolve(a) : rGetInverseFromQR:
#   Timing stopped at: 67.128 77.56 56.285 


system.time(qr <- qr(a))

# system.time(qr <- gpuQr(a))
# Error in gpuQr(a) : out of memory
# In addition: Warning message:
#   In gpuQr(a) : rGetQRDecompRR:
#   Timing stopped at: 0.156 0.04 0.197 