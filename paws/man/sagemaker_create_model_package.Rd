% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_model_package}
\alias{sagemaker_create_model_package}
\title{Creates a model package that you can use to create Amazon SageMaker
models or list on AWS Marketplace}
\usage{
sagemaker_create_model_package(ModelPackageName,
  ModelPackageDescription, InferenceSpecification,
  ValidationSpecification, SourceAlgorithmSpecification,
  CertifyForMarketplace)
}
\arguments{
\item{ModelPackageName}{[required] The name of the model package. The name must have 1 to 63 characters.
Valid characters are a-z, A-Z, 0-9, and - (hyphen).}

\item{ModelPackageDescription}{A description of the model package.}

\item{InferenceSpecification}{Specifies details about inference jobs that can be run with models based
on this model package, including the following:
\itemize{
\item The Amazon ECR paths of containers that contain the inference code
and model artifacts.
\item The instance types that the model package supports for transform
jobs and real-time endpoints used for inference.
\item The input and output content formats that the model package supports
for inference.
}}

\item{ValidationSpecification}{Specifies configurations for one or more transform jobs that Amazon
SageMaker runs to test the model package.}

\item{SourceAlgorithmSpecification}{Details about the algorithm that was used to create the model package.}

\item{CertifyForMarketplace}{Whether to certify the model package for listing on AWS Marketplace.}
}
\description{
Creates a model package that you can use to create Amazon SageMaker
models or list on AWS Marketplace. Buyers can subscribe to model
packages listed on AWS Marketplace to create models in Amazon SageMaker.
}
\details{
To create a model package by specifying a Docker container that contains
your inference code and the Amazon S3 location of your model artifacts,
provide values for \code{InferenceSpecification}. To create a model from an
algorithm resource that you created or subscribed to in AWS Marketplace,
provide a value for \code{SourceAlgorithmSpecification}.
}
\section{Request syntax}{
\preformatted{svc$create_model_package(
  ModelPackageName = "string",
  ModelPackageDescription = "string",
  InferenceSpecification = list(
    Containers = list(
      list(
        ContainerHostname = "string",
        Image = "string",
        ImageDigest = "string",
        ModelDataUrl = "string",
        ProductId = "string"
      )
    ),
    SupportedTransformInstanceTypes = list(
      "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"
    ),
    SupportedRealtimeInferenceInstanceTypes = list(
      "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"
    ),
    SupportedContentTypes = list(
      "string"
    ),
    SupportedResponseMIMETypes = list(
      "string"
    )
  ),
  ValidationSpecification = list(
    ValidationRole = "string",
    ValidationProfiles = list(
      list(
        ProfileName = "string",
        TransformJobDefinition = list(
          MaxConcurrentTransforms = 123,
          MaxPayloadInMB = 123,
          BatchStrategy = "MultiRecord"|"SingleRecord",
          Environment = list(
            "string"
          ),
          TransformInput = list(
            DataSource = list(
              S3DataSource = list(
                S3DataType = "ManifestFile"|"S3Prefix"|"AugmentedManifestFile",
                S3Uri = "string"
              )
            ),
            ContentType = "string",
            CompressionType = "None"|"Gzip",
            SplitType = "None"|"Line"|"RecordIO"|"TFRecord"
          ),
          TransformOutput = list(
            S3OutputPath = "string",
            Accept = "string",
            AssembleWith = "None"|"Line",
            KmsKeyId = "string"
          ),
          TransformResources = list(
            InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge",
            InstanceCount = 123,
            VolumeKmsKeyId = "string"
          )
        )
      )
    )
  ),
  SourceAlgorithmSpecification = list(
    SourceAlgorithms = list(
      list(
        ModelDataUrl = "string",
        AlgorithmName = "string"
      )
    )
  ),
  CertifyForMarketplace = TRUE|FALSE
)
}
}

\keyword{internal}
