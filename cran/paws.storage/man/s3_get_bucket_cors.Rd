% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_cors}
\alias{s3_get_bucket_cors}
\title{Returns the CORS configuration for the bucket}
\usage{
s3_get_bucket_cors(Bucket)
}
\arguments{
\item{Bucket}{[required]}
}
\description{
Returns the CORS configuration for the bucket.
}
\section{Request syntax}{
\preformatted{svc$get_bucket_cors(
  Bucket = "string"
)
}
}

\examples{
# The following example returns cross-origin resource sharing (CORS)
# configuration set on a bucket.
\donttest{svc$get_bucket_cors(
  Bucket = "examplebucket"
)}

}
\keyword{internal}