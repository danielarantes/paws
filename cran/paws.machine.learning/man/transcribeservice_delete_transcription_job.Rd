% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transcribeservice_operations.R
\name{transcribeservice_delete_transcription_job}
\alias{transcribeservice_delete_transcription_job}
\title{Deletes a previously submitted transcription job along with any other
generated results such as the transcription, models, and so on}
\usage{
transcribeservice_delete_transcription_job(TranscriptionJobName)
}
\arguments{
\item{TranscriptionJobName}{[required] The name of the transcription job to be deleted.}
}
\description{
Deletes a previously submitted transcription job along with any other
generated results such as the transcription, models, and so on.
}
\section{Request syntax}{
\preformatted{svc$delete_transcription_job(
  TranscriptionJobName = "string"
)
}
}

\keyword{internal}
