% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicequotas_operations.R
\name{servicequotas_delete_service_quota_increase_request_from_template}
\alias{servicequotas_delete_service_quota_increase_request_from_template}
\title{Removes a service quota increase request from the Service Quotas
template}
\usage{
servicequotas_delete_service_quota_increase_request_from_template(
  ServiceCode, QuotaCode, AwsRegion)
}
\arguments{
\item{ServiceCode}{[required] Specifies the code for the service that you want to delete.}

\item{QuotaCode}{[required] Specifies the code for the quota that you want to delete.}

\item{AwsRegion}{[required] Specifies the AWS Region for the quota that you want to delete.}
}
\description{
Removes a service quota increase request from the Service Quotas
template.
}
\section{Request syntax}{
\preformatted{svc$delete_service_quota_increase_request_from_template(
  ServiceCode = "string",
  QuotaCode = "string",
  AwsRegion = "string"
)
}
}

\keyword{internal}
