% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotanalytics_operations.R
\name{iotanalytics_create_channel}
\alias{iotanalytics_create_channel}
\title{Creates a channel}
\usage{
iotanalytics_create_channel(channelName, retentionPeriod, tags)
}
\arguments{
\item{channelName}{[required] The name of the channel.}

\item{retentionPeriod}{How long, in days, message data is kept for the channel.}

\item{tags}{Metadata which can be used to manage the channel.}
}
\description{
Creates a channel. A channel collects data from an MQTT topic and
archives the raw, unprocessed messages before publishing the data to a
pipeline.
}
\section{Request syntax}{
\preformatted{svc$create_channel(
  channelName = "string",
  retentionPeriod = list(
    unlimited = TRUE|FALSE,
    numberOfDays = 123
  ),
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