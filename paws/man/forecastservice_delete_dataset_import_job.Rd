% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forecastservice_operations.R
\name{forecastservice_delete_dataset_import_job}
\alias{forecastservice_delete_dataset_import_job}
\title{Deletes a dataset import job created using the CreateDatasetImportJob
operation}
\usage{
forecastservice_delete_dataset_import_job(DatasetImportJobArn)
}
\arguments{
\item{DatasetImportJobArn}{[required] The Amazon Resource Name (ARN) of the dataset import job to delete.}
}
\description{
Deletes a dataset import job created using the CreateDatasetImportJob
operation. You can delete only dataset import jobs that have a status of
\code{ACTIVE} or \code{CREATE_FAILED}. To get the status, use the
DescribeDatasetImportJob operation.
}
\section{Request syntax}{
\preformatted{svc$delete_dataset_import_job(
  DatasetImportJobArn = "string"
)
}
}

\keyword{internal}
