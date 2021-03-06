% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_update_group}
\alias{greengrass_update_group}
\title{Updates a group}
\usage{
greengrass_update_group(GroupId, Name)
}
\arguments{
\item{GroupId}{[required] The ID of the Greengrass group.}

\item{Name}{The name of the definition.}
}
\description{
Updates a group.
}
\section{Request syntax}{
\preformatted{svc$update_group(
  GroupId = "string",
  Name = "string"
)
}
}

\keyword{internal}
