% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directconnect_operations.R
\name{directconnect_list_virtual_interface_test_history}
\alias{directconnect_list_virtual_interface_test_history}
\title{Lists the virtual interface failover test history}
\usage{
directconnect_list_virtual_interface_test_history(testId,
  virtualInterfaceId, bgpPeers, status, maxResults, nextToken)
}
\arguments{
\item{testId}{The ID of the virtual interface failover test.}

\item{virtualInterfaceId}{The ID of the virtual interface that was tested.}

\item{bgpPeers}{The BGP peers that were placed in the DOWN state during the virtual
interface failover test.}

\item{status}{The status of the virtual interface failover test.}

\item{maxResults}{The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned \code{nextToken}
value.

If \code{MaxResults} is given a value larger than 100, only 100 results are
returned.}

\item{nextToken}{The token for the next page of results.}
}
\description{
Lists the virtual interface failover test history.
}
\section{Request syntax}{
\preformatted{svc$list_virtual_interface_test_history(
  testId = "string",
  virtualInterfaceId = "string",
  bgpPeers = list(
    "string"
  ),
  status = "string",
  maxResults = 123,
  nextToken = "string"
)
}
}

\keyword{internal}
