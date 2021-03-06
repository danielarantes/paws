% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalize_operations.R
\name{personalize_delete_filter}
\alias{personalize_delete_filter}
\title{Deletes a filter}
\usage{
personalize_delete_filter(filterArn)
}
\arguments{
\item{filterArn}{[required] The ARN of the filter to delete.}
}
\description{
Deletes a filter.
}
\section{Request syntax}{
\preformatted{svc$delete_filter(
  filterArn = "string"
)
}
}

\keyword{internal}
