% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpointemail_operations.R
\name{pinpointemail_list_configuration_sets}
\alias{pinpointemail_list_configuration_sets}
\title{List all of the configuration sets associated with your Amazon Pinpoint
account in the current region}
\usage{
pinpointemail_list_configuration_sets(NextToken, PageSize)
}
\arguments{
\item{NextToken}{A token returned from a previous call to \code{ListConfigurationSets} to
indicate the position in the list of configuration sets.}

\item{PageSize}{The number of results to show in a single call to
\code{ListConfigurationSets}. If the number of results is larger than the
number you specified in this parameter, then the response includes a
\code{NextToken} element, which you can use to obtain additional results.}
}
\description{
List all of the configuration sets associated with your Amazon Pinpoint
account in the current region.
}
\details{
In Amazon Pinpoint, \emph{configuration sets} are groups of rules that you
can apply to the emails you send. You apply a configuration set to an
email by including a reference to the configuration set in the headers
of the email. When you apply a configuration set to an email, all of the
rules in that configuration set are applied to the email.
}
\section{Request syntax}{
\preformatted{svc$list_configuration_sets(
  NextToken = "string",
  PageSize = 123
)
}
}

\keyword{internal}
