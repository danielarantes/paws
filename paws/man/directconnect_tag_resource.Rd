% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directconnect_operations.R
\name{directconnect_tag_resource}
\alias{directconnect_tag_resource}
\title{Adds the specified tags to the specified AWS Direct Connect resource}
\usage{
directconnect_tag_resource(resourceArn, tags)
}
\arguments{
\item{resourceArn}{[required] The Amazon Resource Name (ARN) of the resource.}

\item{tags}{[required] The tags to add.}
}
\description{
Adds the specified tags to the specified AWS Direct Connect resource.
Each resource can have a maximum of 50 tags.
}
\details{
Each tag consists of a key and an optional value. If a tag with the same
key is already associated with the resource, this action updates its
value.
}
\section{Request syntax}{
\preformatted{svc$tag_resource(
  resourceArn = "string",
  tags = list(
    list(
      key = "string",
      value = "string"
    )
  )
)
}
}

\keyword{internal}
