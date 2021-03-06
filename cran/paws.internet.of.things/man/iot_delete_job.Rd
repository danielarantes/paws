% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_delete_job}
\alias{iot_delete_job}
\title{Deletes a job and its related job executions}
\usage{
iot_delete_job(jobId, force)
}
\arguments{
\item{jobId}{[required] The ID of the job to be deleted.

After a job deletion is completed, you may reuse this jobId when you
create a new job. However, this is not recommended, and you must ensure
that your devices are not using the jobId to refer to the deleted job.}

\item{force}{(Optional) When true, you can delete a job which is \"IN\\_PROGRESS\".
Otherwise, you can only delete a job which is in a terminal state
(\"COMPLETED\" or \"CANCELED\") or an exception will occur. The default
is false.

Deleting a job which is \"IN\\_PROGRESS\", will cause a device which is
executing the job to be unable to access job information or update the
job execution status. Use caution and ensure that each device executing
a job which is deleted is able to recover to a valid state.}
}
\description{
Deletes a job and its related job executions.
}
\details{
Deleting a job may take time, depending on the number of job executions
created for the job and various other factors. While the job is being
deleted, the status of the job will be shown as
\"DELETION\\_IN\\_PROGRESS\". Attempting to delete or cancel a job whose
status is already \"DELETION\\_IN\\_PROGRESS\" will result in an error.

Only 10 jobs may have status \"DELETION\\_IN\\_PROGRESS\" at the same
time, or a LimitExceededException will occur.
}
\section{Request syntax}{
\preformatted{svc$delete_job(
  jobId = "string",
  force = TRUE|FALSE
)
}
}

\keyword{internal}
