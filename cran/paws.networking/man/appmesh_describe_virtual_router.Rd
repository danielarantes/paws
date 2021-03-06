% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appmesh_operations.R
\name{appmesh_describe_virtual_router}
\alias{appmesh_describe_virtual_router}
\title{Describes an existing virtual router}
\usage{
appmesh_describe_virtual_router(meshName, meshOwner, virtualRouterName)
}
\arguments{
\item{meshName}{[required] The name of the service mesh that the virtual router resides in.}

\item{meshOwner}{The AWS IAM account ID of the service mesh owner. If the account ID is
not your own, then it\'s the ID of the account that shared the mesh with
your account. For more information about mesh sharing, see \href{https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html}{Working with shared meshes}.}

\item{virtualRouterName}{[required] The name of the virtual router to describe.}
}
\description{
Describes an existing virtual router.
}
\section{Request syntax}{
\preformatted{svc$describe_virtual_router(
  meshName = "string",
  meshOwner = "string",
  virtualRouterName = "string"
)
}
}

\keyword{internal}
