% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/migrationhub_operations.R
\name{migrationhub_disassociate_discovered_resource}
\alias{migrationhub_disassociate_discovered_resource}
\title{Disassociate an Application Discovery Service discovered resource from a
migration task}
\usage{
migrationhub_disassociate_discovered_resource(ProgressUpdateStream,
  MigrationTaskName, ConfigurationId, DryRun)
}
\arguments{
\item{ProgressUpdateStream}{[required] The name of the ProgressUpdateStream.}

\item{MigrationTaskName}{[required] The identifier given to the MigrationTask. \emph{Do not store personal data
in this field.}}

\item{ConfigurationId}{[required] ConfigurationId of the Application Discovery Service resource to be
disassociated.}

\item{DryRun}{Optional boolean flag to indicate whether any effect should take place.
Used to test if the caller has permission to make the call.}
}
\description{
Disassociate an Application Discovery Service discovered resource from a
migration task.
}
\section{Request syntax}{
\preformatted{svc$disassociate_discovered_resource(
  ProgressUpdateStream = "string",
  MigrationTaskName = "string",
  ConfigurationId = "string",
  DryRun = TRUE|FALSE
)
}
}

\keyword{internal}
