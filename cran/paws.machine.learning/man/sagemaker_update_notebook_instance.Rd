% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_update_notebook_instance}
\alias{sagemaker_update_notebook_instance}
\title{Updates a notebook instance}
\usage{
sagemaker_update_notebook_instance(NotebookInstanceName, InstanceType,
  RoleArn, LifecycleConfigName, DisassociateLifecycleConfig,
  VolumeSizeInGB, DefaultCodeRepository, AdditionalCodeRepositories,
  AcceleratorTypes, DisassociateAcceleratorTypes,
  DisassociateDefaultCodeRepository,
  DisassociateAdditionalCodeRepositories, RootAccess)
}
\arguments{
\item{NotebookInstanceName}{[required] The name of the notebook instance to update.}

\item{InstanceType}{The Amazon ML compute instance type.}

\item{RoleArn}{The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker can
assume to access the notebook instance. For more information, see
\href{https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html}{Amazon SageMaker Roles}.

To be able to pass this role to Amazon SageMaker, the caller of this API
must have the \code{iam:PassRole} permission.}

\item{LifecycleConfigName}{The name of a lifecycle configuration to associate with the notebook
instance. For information about lifestyle configurations, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html}{Step 2.1: (Optional) Customize a Notebook Instance}.}

\item{DisassociateLifecycleConfig}{Set to \code{true} to remove the notebook instance lifecycle configuration
currently associated with the notebook instance. This operation is
idempotent. If you specify a lifecycle configuration that is not
associated with the notebook instance when you call this method, it does
not throw an error.}

\item{VolumeSizeInGB}{The size, in GB, of the ML storage volume to attach to the notebook
instance. The default value is 5 GB. ML storage volumes are encrypted,
so Amazon SageMaker can\'t determine the amount of available free space
on the volume. Because of this, you can increase the volume size when
you update a notebook instance, but you can\'t decrease the volume size.
If you want to decrease the size of the ML storage volume in use, create
a new notebook instance with the desired size.}

\item{DefaultCodeRepository}{The Git repository to associate with the notebook instance as its
default code repository. This can be either the name of a Git repository
stored as a resource in your account, or the URL of a Git repository in
\href{https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html}{AWS CodeCommit}
or in any other Git repository. When you open a notebook instance, it
opens in the directory that contains this repository. For more
information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html}{Associating Git Repositories with Amazon SageMaker Notebook Instances}.}

\item{AdditionalCodeRepositories}{An array of up to three Git repositories to associate with the notebook
instance. These can be either the names of Git repositories stored as
resources in your account, or the URL of Git repositories in \href{https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html}{AWS CodeCommit}
or in any other Git repository. These repositories are cloned at the
same level as the default repository of your notebook instance. For more
information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html}{Associating Git Repositories with Amazon SageMaker Notebook Instances}.}

\item{AcceleratorTypes}{A list of the Elastic Inference (EI) instance types to associate with
this notebook instance. Currently only one EI instance type can be
associated with a notebook instance. For more information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html}{Using Elastic Inference in Amazon SageMaker}.}

\item{DisassociateAcceleratorTypes}{A list of the Elastic Inference (EI) instance types to remove from this
notebook instance. This operation is idempotent. If you specify an
accelerator type that is not associated with the notebook instance when
you call this method, it does not throw an error.}

\item{DisassociateDefaultCodeRepository}{The name or URL of the default Git repository to remove from this
notebook instance. This operation is idempotent. If you specify a Git
repository that is not associated with the notebook instance when you
call this method, it does not throw an error.}

\item{DisassociateAdditionalCodeRepositories}{A list of names or URLs of the default Git repositories to remove from
this notebook instance. This operation is idempotent. If you specify a
Git repository that is not associated with the notebook instance when
you call this method, it does not throw an error.}

\item{RootAccess}{Whether root access is enabled or disabled for users of the notebook
instance. The default value is \code{Enabled}.

If you set this to \code{Disabled}, users don\'t have root access on the
notebook instance, but lifecycle configuration scripts still run with
root permissions.}
}
\description{
Updates a notebook instance. NotebookInstance updates include upgrading
or downgrading the ML compute instance used for your notebook instance
to accommodate changes in your workload requirements.
}
\section{Request syntax}{
\preformatted{svc$update_notebook_instance(
  NotebookInstanceName = "string",
  InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge",
  RoleArn = "string",
  LifecycleConfigName = "string",
  DisassociateLifecycleConfig = TRUE|FALSE,
  VolumeSizeInGB = 123,
  DefaultCodeRepository = "string",
  AdditionalCodeRepositories = list(
    "string"
  ),
  AcceleratorTypes = list(
    "ml.eia1.medium"|"ml.eia1.large"|"ml.eia1.xlarge"|"ml.eia2.medium"|"ml.eia2.large"|"ml.eia2.xlarge"
  ),
  DisassociateAcceleratorTypes = TRUE|FALSE,
  DisassociateDefaultCodeRepository = TRUE|FALSE,
  DisassociateAdditionalCodeRepositories = TRUE|FALSE,
  RootAccess = "Enabled"|"Disabled"
)
}
}

\keyword{internal}
