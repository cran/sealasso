\name{sealasso}
\alias{sealasso}
\title{Standard Error Adjusted Adaptive Lasso}
\description{
  This provides the solution path of some variants of the adaptive lasso (e.g. SEA-lasso, NSEA-lasso, OLS-adaptive lasso), and the corresponding optimal model selected by BIC criterion.
}
\usage{
sealasso(x, y, method = c("nsealasso", "sealasso", "olsalasso", "lasso"))
}
\arguments{
  \item{x}{  The model matrix.}
  \item{y}{The response.}
  \item{method}{One of "nsealasso", "sealasso", "olsalasso" and "lasso", which represent NSEA-lasso, SEA-lasso, OLS-adaptive lasso and the lasso, respectively. The default is "nsealasso".}
}
\details{
  SEA-lasso and NSEA-lasso (Qian and Yang, 2010) are two versions of the adaptive lasso. They may be used for variable selection, especially in cases where condition index of the scaled model matrix is large (e.g. > 10) and collinearity is a concern. This function provides condition index, solution path and the suggested optimal model based on BIC. The estimated coefficients are also given for transition points of the path. 
}

\value{
  \item{method}{The method used.}
  \item{condition.index}{Condition index of the scaled model matrix.}
  \item{path}{Solution path and corresponding BIC values at transition points.}
  \item{beta}{The estimated coefficients at transition points of solution path.}
  \item{optim.beta}{The estimated coefficients of the optimal model based on BIC criterion.}
}

\references{
  Qian, W. and Yang, Y. (2010) "Model Selection via Standard Error Adjusted Adaptive Lasso." Technical Report, University of Minnesota. 
}
 

\examples{
  # use the diabetes dataset from "lars" package
  data(diabetes)
  x <- diabetes$x
  y <- diabetes$y
  sealasso(x, y)

  # with quadratic terms
  x2 <- cbind(diabetes$x1,diabetes$x2)
  object <- sealasso(x2, y, "sealasso")
  object$condition.index
  object$optim.beta
}
