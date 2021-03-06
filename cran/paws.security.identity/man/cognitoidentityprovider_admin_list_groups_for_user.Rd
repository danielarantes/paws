% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_admin_list_groups_for_user}
\alias{cognitoidentityprovider_admin_list_groups_for_user}
\title{Lists the groups that the user belongs to}
\usage{
cognitoidentityprovider_admin_list_groups_for_user(Username, UserPoolId,
  Limit, NextToken)
}
\arguments{
\item{Username}{[required] The username for the user.}

\item{UserPoolId}{[required] The user pool ID for the user pool.}

\item{Limit}{The limit of the request to list groups.}

\item{NextToken}{An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.}
}
\description{
Lists the groups that the user belongs to.
}
\details{
Calling this action requires developer credentials.
}
\section{Request syntax}{
\preformatted{svc$admin_list_groups_for_user(
  Username = "string",
  UserPoolId = "string",
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
