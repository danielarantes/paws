% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_list_user_profiles}
\alias{sagemaker_list_user_profiles}
\title{Lists user profiles}
\usage{
sagemaker_list_user_profiles(NextToken, MaxResults, SortOrder, SortBy,
  DomainIdEquals, UserProfileNameContains)
}
\arguments{
\item{NextToken}{If the previous response was truncated, you will receive this token. Use
it in your next request to receive the next set of results.}

\item{MaxResults}{Returns a list up to a specified limit.}

\item{SortOrder}{The sort order for the results. The default is Ascending.}

\item{SortBy}{The parameter by which to sort the results. The default is CreationTime.}

\item{DomainIdEquals}{A parameter by which to filter the results.}

\item{UserProfileNameContains}{A parameter by which to filter the results.}
}
\description{
Lists user profiles.
}
\section{Request syntax}{
\preformatted{svc$list_user_profiles(
  NextToken = "string",
  MaxResults = 123,
  SortOrder = "Ascending"|"Descending",
  SortBy = "CreationTime"|"LastModifiedTime",
  DomainIdEquals = "string",
  UserProfileNameContains = "string"
)
}
}

\keyword{internal}
