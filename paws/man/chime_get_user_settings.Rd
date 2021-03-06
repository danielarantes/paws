% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_get_user_settings}
\alias{chime_get_user_settings}
\title{Retrieves settings for the specified user ID, such as any associated
phone number settings}
\usage{
chime_get_user_settings(AccountId, UserId)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}

\item{UserId}{[required] The user ID.}
}
\description{
Retrieves settings for the specified user ID, such as any associated
phone number settings.
}
\section{Request syntax}{
\preformatted{svc$get_user_settings(
  AccountId = "string",
  UserId = "string"
)
}
}

\keyword{internal}
