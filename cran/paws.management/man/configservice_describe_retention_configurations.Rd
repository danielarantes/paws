% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_describe_retention_configurations}
\alias{configservice_describe_retention_configurations}
\title{Returns the details of one or more retention configurations}
\usage{
configservice_describe_retention_configurations(
  RetentionConfigurationNames, NextToken)
}
\arguments{
\item{RetentionConfigurationNames}{A list of names of retention configurations for which you want details.
If you do not specify a name, AWS Config returns details for all the
retention configurations for that account.

Currently, AWS Config supports only one retention configuration per
region in your account.}

\item{NextToken}{The \code{nextToken} string returned on a previous page that you use to get
the next page of results in a paginated response.}
}
\description{
Returns the details of one or more retention configurations. If the
retention configuration name is not specified, this action returns the
details for all the retention configurations for that account.
}
\details{
Currently, AWS Config supports only one retention configuration per
region in your account.
}
\section{Request syntax}{
\preformatted{svc$describe_retention_configurations(
  RetentionConfigurationNames = list(
    "string"
  ),
  NextToken = "string"
)
}
}

\keyword{internal}
