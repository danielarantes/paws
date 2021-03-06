% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_delete_data_source}
\alias{quicksight_delete_data_source}
\title{Deletes the data source permanently}
\usage{
quicksight_delete_data_source(AwsAccountId, DataSourceId)
}
\arguments{
\item{AwsAccountId}{[required] The AWS account ID.}

\item{DataSourceId}{[required] The ID of the data source. This ID is unique per AWS Region for each AWS
account.}
}
\description{
Deletes the data source permanently. This action breaks all the datasets
that reference the deleted data source.
}
\section{Request syntax}{
\preformatted{svc$delete_data_source(
  AwsAccountId = "string",
  DataSourceId = "string"
)
}
}

\keyword{internal}
