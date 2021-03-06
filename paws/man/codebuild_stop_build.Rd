% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codebuild_operations.R
\name{codebuild_stop_build}
\alias{codebuild_stop_build}
\title{Attempts to stop running a build}
\usage{
codebuild_stop_build(id)
}
\arguments{
\item{id}{[required] The ID of the build.}
}
\description{
Attempts to stop running a build.
}
\section{Request syntax}{
\preformatted{svc$stop_build(
  id = "string"
)
}
}

\keyword{internal}
