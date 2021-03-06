% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_describe_provisioning_template}
\alias{iot_describe_provisioning_template}
\title{Returns information about a fleet provisioning template}
\usage{
iot_describe_provisioning_template(templateName)
}
\arguments{
\item{templateName}{[required] The name of the fleet provisioning template.}
}
\description{
Returns information about a fleet provisioning template.
}
\section{Request syntax}{
\preformatted{svc$describe_provisioning_template(
  templateName = "string"
)
}
}

\keyword{internal}
