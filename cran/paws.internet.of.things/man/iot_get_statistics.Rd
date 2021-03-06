% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_get_statistics}
\alias{iot_get_statistics}
\title{Returns the count, average, sum, minimum, maximum, sum of squares,
variance, and standard deviation for the specified aggregated field}
\usage{
iot_get_statistics(indexName, queryString, aggregationField,
  queryVersion)
}
\arguments{
\item{indexName}{The name of the index to search. The default value is \code{AWS_Things}.}

\item{queryString}{[required] The query used to search. You can specify \"*\" for the query string to
get the count of all indexed things in your AWS account.}

\item{aggregationField}{The aggregation field name.}

\item{queryVersion}{The version of the query used to search.}
}
\description{
Returns the count, average, sum, minimum, maximum, sum of squares,
variance, and standard deviation for the specified aggregated field. If
the aggregation field is of type \code{String}, only the count statistic is
returned.
}
\section{Request syntax}{
\preformatted{svc$get_statistics(
  indexName = "string",
  queryString = "string",
  aggregationField = "string",
  queryVersion = "string"
)
}
}

\keyword{internal}
