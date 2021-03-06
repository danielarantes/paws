% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_delete_database}
\alias{glue_delete_database}
\title{Removes a specified database from a Data Catalog}
\usage{
glue_delete_database(CatalogId, Name)
}
\arguments{
\item{CatalogId}{The ID of the Data Catalog in which the database resides. If none is
provided, the AWS account ID is used by default.}

\item{Name}{[required] The name of the database to delete. For Hive compatibility, this must be
all lowercase.}
}
\description{
Removes a specified database from a Data Catalog.
}
\details{
After completing this operation, you no longer have access to the tables
(and all table versions and partitions that might belong to the tables)
and the user-defined functions in the deleted database. AWS Glue deletes
these \"orphaned\" resources asynchronously in a timely manner, at the
discretion of the service.

To ensure the immediate deletion of all related resources, before
calling \code{DeleteDatabase}, use \code{DeleteTableVersion} or
\code{BatchDeleteTableVersion}, \code{DeletePartition} or \code{BatchDeletePartition},
\code{DeleteUserDefinedFunction}, and \code{DeleteTable} or \code{BatchDeleteTable}, to
delete any resources that belong to the database.
}
\section{Request syntax}{
\preformatted{svc$delete_database(
  CatalogId = "string",
  Name = "string"
)
}
}

\keyword{internal}
