% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_associate_kms_key}
\alias{cloudwatchlogs_associate_kms_key}
\title{Associates the specified AWS Key Management Service (AWS KMS) customer
master key (CMK) with the specified log group}
\usage{
cloudwatchlogs_associate_kms_key(logGroupName, kmsKeyId)
}
\arguments{
\item{logGroupName}{[required] The name of the log group.}

\item{kmsKeyId}{[required] The Amazon Resource Name (ARN) of the CMK to use when encrypting log
data. This must be a symmetric CMK. For more information, see \href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms}{Amazon Resource Names - AWS Key Management Service (AWS KMS)}
and \href{https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html}{Using Symmetric and Asymmetric Keys}.}
}
\description{
Associates the specified AWS Key Management Service (AWS KMS) customer
master key (CMK) with the specified log group.
}
\details{
Associating an AWS KMS CMK with a log group overrides any existing
associations between the log group and a CMK. After a CMK is associated
with a log group, all newly ingested data for the log group is encrypted
using the CMK. This association is stored as long as the data encrypted
with the CMK is still within Amazon CloudWatch Logs. This enables Amazon
CloudWatch Logs to decrypt this data whenever it is requested.

\strong{Important:} CloudWatch Logs supports only symmetric CMKs. Do not use
an associate an asymmetric CMK with your log group. For more
information, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html}{Using Symmetric and Asymmetric Keys}.

Note that it can take up to 5 minutes for this operation to take effect.

If you attempt to associate a CMK with a log group but the CMK does not
exist or the CMK is disabled, you will receive an
\code{InvalidParameterException} error.
}
\section{Request syntax}{
\preformatted{svc$associate_kms_key(
  logGroupName = "string",
  kmsKeyId = "string"
)
}
}

\keyword{internal}
