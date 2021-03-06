% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/macie2_operations.R
\name{macie2_list_findings_filters}
\alias{macie2_list_findings_filters}
\title{Retrieves a subset of information about all the findings filters for an
account}
\usage{
macie2_list_findings_filters(maxResults, nextToken)
}
\arguments{
\item{maxResults}{The maximum number of items to include in each page of a paginated
response.}

\item{nextToken}{The nextToken string that specifies which page of results to return in a
paginated response.}
}
\description{
Retrieves a subset of information about all the findings filters for an
account.
}
\section{Request syntax}{
\preformatted{svc$list_findings_filters(
  maxResults = 123,
  nextToken = "string"
)
}
}

\keyword{internal}
