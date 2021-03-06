% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/worklink_operations.R
\name{worklink_delete_fleet}
\alias{worklink_delete_fleet}
\title{Deletes a fleet}
\usage{
worklink_delete_fleet(FleetArn)
}
\arguments{
\item{FleetArn}{[required] The ARN of the fleet.}
}
\description{
Deletes a fleet. Prevents users from accessing previously associated
websites.
}
\section{Request syntax}{
\preformatted{svc$delete_fleet(
  FleetArn = "string"
)
}
}

\keyword{internal}
