% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisanalyticsv2_operations.R
\name{kinesisanalyticsv2_delete_application_reference_data_source}
\alias{kinesisanalyticsv2_delete_application_reference_data_source}
\title{Deletes a reference data source configuration from the specified
SQL-based Amazon Kinesis Data Analytics application's configuration}
\usage{
kinesisanalyticsv2_delete_application_reference_data_source(
  ApplicationName, CurrentApplicationVersionId, ReferenceId)
}
\arguments{
\item{ApplicationName}{[required] The name of an existing application.}

\item{CurrentApplicationVersionId}{[required] The current application version. You can use the DescribeApplication
operation to get the current application version. If the version
specified is not the current version, the
\code{ConcurrentModificationException} is returned.}

\item{ReferenceId}{[required] The ID of the reference data source. When you add a reference data
source to your application using the AddApplicationReferenceDataSource,
Kinesis Data Analytics assigns an ID. You can use the
DescribeApplication operation to get the reference ID.}
}
\description{
Deletes a reference data source configuration from the specified
SQL-based Amazon Kinesis Data Analytics application\'s configuration.
}
\details{
If the application is running, Kinesis Data Analytics immediately
removes the in-application table that you created using the
AddApplicationReferenceDataSource operation.
}
\section{Request syntax}{
\preformatted{svc$delete_application_reference_data_source(
  ApplicationName = "string",
  CurrentApplicationVersionId = 123,
  ReferenceId = "string"
)
}
}

\keyword{internal}
