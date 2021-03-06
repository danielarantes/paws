% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_describe_configuration_aggregator_sources_status}
\alias{configservice_describe_configuration_aggregator_sources_status}
\title{Returns status information for sources within an aggregator}
\usage{
configservice_describe_configuration_aggregator_sources_status(
  ConfigurationAggregatorName, UpdateStatus, NextToken, Limit)
}
\arguments{
\item{ConfigurationAggregatorName}{[required] The name of the configuration aggregator.}

\item{UpdateStatus}{Filters the status type.
\itemize{
\item Valid value FAILED indicates errors while moving data.
\item Valid value SUCCEEDED indicates the data was successfully moved.
\item Valid value OUTDATED indicates the data is not the most recent.
}}

\item{NextToken}{The \code{nextToken} string returned on a previous page that you use to get
the next page of results in a paginated response.}

\item{Limit}{The maximum number of AggregatorSourceStatus returned on each page. The
default is maximum. If you specify 0, AWS Config uses the default.}
}
\description{
Returns status information for sources within an aggregator. The status
includes information about the last time AWS Config verified
authorization between the source account and an aggregator account. In
case of a failure, the status contains the related error code or
message.
}
\section{Request syntax}{
\preformatted{svc$describe_configuration_aggregator_sources_status(
  ConfigurationAggregatorName = "string",
  UpdateStatus = list(
    "FAILED"|"SUCCEEDED"|"OUTDATED"
  ),
  NextToken = "string",
  Limit = 123
)
}
}

\keyword{internal}
