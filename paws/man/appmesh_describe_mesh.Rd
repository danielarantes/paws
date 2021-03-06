% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appmesh_operations.R
\name{appmesh_describe_mesh}
\alias{appmesh_describe_mesh}
\title{Describes an existing service mesh}
\usage{
appmesh_describe_mesh(meshName, meshOwner)
}
\arguments{
\item{meshName}{[required] The name of the service mesh to describe.}

\item{meshOwner}{The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then it\'s the ID of the account that shared the mesh with
your account. For more information about mesh sharing, see \href{https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html}{Working with shared meshes}.}
}
\description{
Describes an existing service mesh.
}
\section{Request syntax}{
\preformatted{svc$describe_mesh(
  meshName = "string",
  meshOwner = "string"
)
}
}

\keyword{internal}
