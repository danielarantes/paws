% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ebs_operations.R
\name{ebs_start_snapshot}
\alias{ebs_start_snapshot}
\title{Creates a new Amazon EBS snapshot}
\usage{
ebs_start_snapshot(VolumeSize, ParentSnapshotId, Tags, Description,
  ClientToken, Encrypted, KmsKeyArn, Timeout)
}
\arguments{
\item{VolumeSize}{[required] The size of the volume, in GiB. The maximum size is \code{16384} GiB (16
TiB).}

\item{ParentSnapshotId}{The ID of the parent snapshot. If there is no parent snapshot, or if you
are creating the first snapshot for an on-premises volume, omit this
parameter.

If your account is enabled for encryption by default, you cannot use an
unencrypted snapshot as a parent snapshot. You must first create an
encrypted copy of the parent snapshot using
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CopySnapshot.html}{CopySnapshot}.}

\item{Tags}{The tags to apply to the snapshot.}

\item{Description}{A description for the snapshot.}

\item{ClientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully. The subsequent retries with the same client
token return the result from the original successful request and they
have no additional effect.

If you do not specify a client token, one is automatically generated by
the AWS SDK.

For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html}{Idempotency for StartSnapshot API}
in the \emph{Amazon Elastic Compute Cloud User Guide}.}

\item{Encrypted}{Indicates whether to encrypt the snapshot. To create an encrypted
snapshot, specify \code{true}. To create an unencrypted snapshot, omit this
parameter.

If you specify a value for \strong{ParentSnapshotId}, omit this parameter.

If you specify \code{true}, the snapshot is encrypted using the CMK specified
using the \strong{KmsKeyArn} parameter. If no value is specified for
\strong{KmsKeyArn}, the default CMK for your account is used. If no default
CMK has been specified for your account, the AWS managed CMK is used. To
set a default CMK for your account, use
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyEbsDefaultKmsKeyId.html}{ModifyEbsDefaultKmsKeyId}.

If your account is enabled for encryption by default, you cannot set
this parameter to \code{false}. In this case, you can omit this parameter.

For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-encryption}{Using encryption}
in the \emph{Amazon Elastic Compute Cloud User Guide}.}

\item{KmsKeyArn}{The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS
KMS) customer master key (CMK) to be used to encrypt the snapshot. If
you do not specify a CMK, the default AWS managed CMK is used.

If you specify a \strong{ParentSnapshotId}, omit this parameter; the snapshot
will be encrypted using the same CMK that was used to encrypt the parent
snapshot.

If \strong{Encrypted} is set to \code{true}, you must specify a CMK ARN.}

\item{Timeout}{The amount of time (in minutes) after which the snapshot is
automatically cancelled if:
\itemize{
\item No blocks are written to the snapshot.
\item The snapshot is not completed after writing the last block of data.
}

If no value is specified, the timeout defaults to \code{60} minutes.}
}
\description{
Creates a new Amazon EBS snapshot. The new snapshot enters the \code{pending}
state after the request completes.
}
\details{
After creating the snapshot, use
\href{https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html}{PutSnapshotBlock}
to write blocks of data to the snapshot.
}
\section{Request syntax}{
\preformatted{svc$start_snapshot(
  VolumeSize = 123,
  ParentSnapshotId = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  Description = "string",
  ClientToken = "string",
  Encrypted = TRUE|FALSE,
  KmsKeyArn = "string",
  Timeout = 123
)
}
}

\keyword{internal}
