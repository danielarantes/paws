% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisanalyticsv2_operations.R
\name{kinesisanalyticsv2_create_application}
\alias{kinesisanalyticsv2_create_application}
\title{Creates an Amazon Kinesis Data Analytics application}
\usage{
kinesisanalyticsv2_create_application(ApplicationName,
  ApplicationDescription, RuntimeEnvironment, ServiceExecutionRole,
  ApplicationConfiguration, CloudWatchLoggingOptions, Tags)
}
\arguments{
\item{ApplicationName}{[required] The name of your application (for example, \code{sample-app}).}

\item{ApplicationDescription}{A summary description of the application.}

\item{RuntimeEnvironment}{[required] The runtime environment for the application (\code{SQL-1.0} or \verb{FLINK-1_6}).}

\item{ServiceExecutionRole}{[required] The IAM role used by the application to access Kinesis data streams,
Kinesis Data Firehose delivery streams, Amazon S3 objects, and other
external resources.}

\item{ApplicationConfiguration}{Use this parameter to configure the application.}

\item{CloudWatchLoggingOptions}{Use this parameter to configure an Amazon CloudWatch log stream to
monitor application configuration errors.}

\item{Tags}{A list of one or more tags to assign to the application. A tag is a
key-value pair that identifies an application. Note that the maximum
number of application tags includes system tags. The maximum number of
user-defined application tags is 50. For more information, see \href{https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html}{Using Tagging}.}
}
\description{
Creates an Amazon Kinesis Data Analytics application. For information
about creating a Kinesis Data Analytics application, see \href{https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html}{Creating an Application}.
}
\section{Request syntax}{
\preformatted{svc$create_application(
  ApplicationName = "string",
  ApplicationDescription = "string",
  RuntimeEnvironment = "SQL-1_0"|"FLINK-1_6"|"FLINK-1_8",
  ServiceExecutionRole = "string",
  ApplicationConfiguration = list(
    SqlApplicationConfiguration = list(
      Inputs = list(
        list(
          NamePrefix = "string",
          InputProcessingConfiguration = list(
            InputLambdaProcessor = list(
              ResourceARN = "string"
            )
          ),
          KinesisStreamsInput = list(
            ResourceARN = "string"
          ),
          KinesisFirehoseInput = list(
            ResourceARN = "string"
          ),
          InputParallelism = list(
            Count = 123
          ),
          InputSchema = list(
            RecordFormat = list(
              RecordFormatType = "JSON"|"CSV",
              MappingParameters = list(
                JSONMappingParameters = list(
                  RecordRowPath = "string"
                ),
                CSVMappingParameters = list(
                  RecordRowDelimiter = "string",
                  RecordColumnDelimiter = "string"
                )
              )
            ),
            RecordEncoding = "string",
            RecordColumns = list(
              list(
                Name = "string",
                Mapping = "string",
                SqlType = "string"
              )
            )
          )
        )
      ),
      Outputs = list(
        list(
          Name = "string",
          KinesisStreamsOutput = list(
            ResourceARN = "string"
          ),
          KinesisFirehoseOutput = list(
            ResourceARN = "string"
          ),
          LambdaOutput = list(
            ResourceARN = "string"
          ),
          DestinationSchema = list(
            RecordFormatType = "JSON"|"CSV"
          )
        )
      ),
      ReferenceDataSources = list(
        list(
          TableName = "string",
          S3ReferenceDataSource = list(
            BucketARN = "string",
            FileKey = "string"
          ),
          ReferenceSchema = list(
            RecordFormat = list(
              RecordFormatType = "JSON"|"CSV",
              MappingParameters = list(
                JSONMappingParameters = list(
                  RecordRowPath = "string"
                ),
                CSVMappingParameters = list(
                  RecordRowDelimiter = "string",
                  RecordColumnDelimiter = "string"
                )
              )
            ),
            RecordEncoding = "string",
            RecordColumns = list(
              list(
                Name = "string",
                Mapping = "string",
                SqlType = "string"
              )
            )
          )
        )
      )
    ),
    FlinkApplicationConfiguration = list(
      CheckpointConfiguration = list(
        ConfigurationType = "DEFAULT"|"CUSTOM",
        CheckpointingEnabled = TRUE|FALSE,
        CheckpointInterval = 123,
        MinPauseBetweenCheckpoints = 123
      ),
      MonitoringConfiguration = list(
        ConfigurationType = "DEFAULT"|"CUSTOM",
        MetricsLevel = "APPLICATION"|"TASK"|"OPERATOR"|"PARALLELISM",
        LogLevel = "INFO"|"WARN"|"ERROR"|"DEBUG"
      ),
      ParallelismConfiguration = list(
        ConfigurationType = "DEFAULT"|"CUSTOM",
        Parallelism = 123,
        ParallelismPerKPU = 123,
        AutoScalingEnabled = TRUE|FALSE
      )
    ),
    EnvironmentProperties = list(
      PropertyGroups = list(
        list(
          PropertyGroupId = "string",
          PropertyMap = list(
            "string"
          )
        )
      )
    ),
    ApplicationCodeConfiguration = list(
      CodeContent = list(
        TextContent = "string",
        ZipFileContent = raw,
        S3ContentLocation = list(
          BucketARN = "string",
          FileKey = "string",
          ObjectVersion = "string"
        )
      ),
      CodeContentType = "PLAINTEXT"|"ZIPFILE"
    ),
    ApplicationSnapshotConfiguration = list(
      SnapshotsEnabled = TRUE|FALSE
    ),
    VpcConfigurations = list(
      list(
        SubnetIds = list(
          "string"
        ),
        SecurityGroupIds = list(
          "string"
        )
      )
    )
  ),
  CloudWatchLoggingOptions = list(
    list(
      LogStreamARN = "string"
    )
  ),
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
