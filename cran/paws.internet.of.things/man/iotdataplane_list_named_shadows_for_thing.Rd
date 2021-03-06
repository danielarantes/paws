% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotdataplane_operations.R
\name{iotdataplane_list_named_shadows_for_thing}
\alias{iotdataplane_list_named_shadows_for_thing}
\title{Lists the shadows for the specified thing}
\usage{
iotdataplane_list_named_shadows_for_thing(thingName, nextToken,
  pageSize)
}
\arguments{
\item{thingName}{[required] The name of the thing.}

\item{nextToken}{The token to retrieve the next set of results.}

\item{pageSize}{The result page size.}
}
\description{
Lists the shadows for the specified thing.
}
\section{Request syntax}{
\preformatted{svc$list_named_shadows_for_thing(
  thingName = "string",
  nextToken = "string",
  pageSize = 123
)
}
}

\keyword{internal}
