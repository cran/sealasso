\name{summary.sealasso}
\alias{summary.sealasso}
\title{Summary method for sealasso objects}
\description{
  This provides the method used, condition index and the optimal model selected by BIC.
}
\usage{
\method{summary}{sealasso}(object, \dots)
}
\arguments{
  \item{object}{a sealasso object}
  \item{\dots}{other arguments to be passed to \code{summary}}
}
\details{
  A summary is provided for a sealasso object. To provide a more succinct output, only the method used, condition index and the selected optimal model are printed out.
}

\value{
  \item{method}{The method used. One of NSEA-lasso, SEA-lasso, OLS-adaptive lasso and Lasso.}
  \item{condition.index}{Condition index of the scaled model matrix.}
  \item{optim.beta}{The estimated coefficients of the optimal model based on BIC criterion.}
}

\references{
  Qian, W. and Yang, Y. (2010) "Model Selection via Standard Error Adjusted Adaptive Lasso." Technical Report, University of Minnesota. 
}
 

\seealso{sealasso}

\examples{
  # use the diabetes dataset from "lars" package
  data(diabetes)
  y <- diabetes$y
  # with quadratic terms
  x2 <- cbind(diabetes$x1,diabetes$x2)
  object <- sealasso(x2, y, "sealasso")
  summary(object)
}
