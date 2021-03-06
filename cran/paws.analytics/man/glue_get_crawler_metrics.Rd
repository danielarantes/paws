% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_crawler_metrics}
\alias{glue_get_crawler_metrics}
\title{Retrieves metrics about specified crawlers}
\usage{
glue_get_crawler_metrics(CrawlerNameList, MaxResults, NextToken)
}
\arguments{
\item{CrawlerNameList}{A list of the names of crawlers about which to retrieve metrics.}

\item{MaxResults}{The maximum size of a list to return.}

\item{NextToken}{A continuation token, if this is a continuation call.}
}
\description{
Retrieves metrics about specified crawlers.
}
\section{Request syntax}{
\preformatted{svc$get_crawler_metrics(
  CrawlerNameList = list(
    "string"
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
