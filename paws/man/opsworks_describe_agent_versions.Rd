% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_describe_agent_versions}
\alias{opsworks_describe_agent_versions}
\title{Describes the available AWS OpsWorks Stacks agent versions}
\usage{
opsworks_describe_agent_versions(StackId, ConfigurationManager)
}
\arguments{
\item{StackId}{The stack ID.}

\item{ConfigurationManager}{The configuration manager.}
}
\description{
Describes the available AWS OpsWorks Stacks agent versions. You must
specify a stack ID or a configuration manager. \code{DescribeAgentVersions}
returns a list of available agent versions for the specified stack or
configuration manager.
}
\section{Request syntax}{
\preformatted{svc$describe_agent_versions(
  StackId = "string",
  ConfigurationManager = list(
    Name = "string",
    Version = "string"
  )
)
}
}

\keyword{internal}
