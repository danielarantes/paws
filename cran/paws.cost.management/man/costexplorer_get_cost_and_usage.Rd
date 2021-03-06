% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/costexplorer_operations.R
\name{costexplorer_get_cost_and_usage}
\alias{costexplorer_get_cost_and_usage}
\title{Retrieves cost and usage metrics for your account}
\usage{
costexplorer_get_cost_and_usage(TimePeriod, Granularity, Filter,
  Metrics, GroupBy, NextPageToken)
}
\arguments{
\item{TimePeriod}{[required] Sets the start and end dates for retrieving AWS costs. The start date is
inclusive, but the end date is exclusive. For example, if \code{start} is
\code{2017-01-01} and \code{end} is \code{2017-05-01}, then the cost and usage data is
retrieved from \code{2017-01-01} up to and including \code{2017-04-30} but not
including \code{2017-05-01}.}

\item{Granularity}{Sets the AWS cost granularity to \code{MONTHLY} or \code{DAILY}, or \code{HOURLY}. If
\code{Granularity} isn\'t set, the response object doesn\'t include the
\code{Granularity}, either \code{MONTHLY} or \code{DAILY}, or \code{HOURLY}.}

\item{Filter}{Filters AWS costs by different dimensions. For example, you can specify
\code{SERVICE} and \code{LINKED_ACCOUNT} and get the costs that are associated
with that account\'s usage of that service. You can nest \code{Expression}
objects to define any combination of dimension filters. For more
information, see
\href{https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html}{Expression}.}

\item{Metrics}{Which metrics are returned in the query. For more information about
blended and unblended rates, see \href{http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/}{Why does the \"blended\" annotation appear on some line items in my bill?}.

Valid values are \code{AmortizedCost}, \code{BlendedCost}, \code{NetAmortizedCost},
\code{NetUnblendedCost}, \code{NormalizedUsageAmount}, \code{UnblendedCost}, and
\code{UsageQuantity}.

If you return the \code{UsageQuantity} metric, the service aggregates all
usage numbers without taking into account the units. For example, if you
aggregate \code{usageQuantity} across all of Amazon EC2, the results aren\'t
meaningful because Amazon EC2 compute hours and data transfer are
measured in different units (for example, hours vs. GB). To get more
meaningful \code{UsageQuantity} metrics, filter by \code{UsageType} or
\code{UsageTypeGroups}.

\code{Metrics} is required for \code{GetCostAndUsage} requests.}

\item{GroupBy}{You can group AWS costs using up to two different groups, either
dimensions, tag keys, or both.

When you group by tag key, you get all tag values, including empty
strings.

Valid values are \code{AZ}, \code{INSTANCE_TYPE}, \code{LEGAL_ENTITY_NAME},
\code{LINKED_ACCOUNT}, \code{OPERATION}, \code{PLATFORM}, \code{PURCHASE_TYPE}, \code{SERVICE},
\code{TAGS}, \code{TENANCY}, \code{RECORD_TYPE}, and \code{USAGE_TYPE}.}

\item{NextPageToken}{The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the maximum
page size.}
}
\description{
Retrieves cost and usage metrics for your account. You can specify which
cost and usage-related metric, such as \code{BlendedCosts} or
\code{UsageQuantity}, that you want the request to return. You can also
filter and group your data by various dimensions, such as \code{SERVICE} or
\code{AZ}, in a specific time range. For a complete list of valid dimensions,
see the
\href{https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html}{GetDimensionValues}
operation. Master accounts in an organization in AWS Organizations have
access to all member accounts.
}
\section{Request syntax}{
\preformatted{svc$get_cost_and_usage(
  TimePeriod = list(
    Start = "string",
    End = "string"
  ),
  Granularity = "DAILY"|"MONTHLY"|"HOURLY",
  Filter = list(
    Or = list(
      list()
    ),
    And = list(
      list()
    ),
    Not = list(),
    Dimensions = list(
      Key = "AZ"|"INSTANCE_TYPE"|"LINKED_ACCOUNT"|"LINKED_ACCOUNT_NAME"|"OPERATION"|"PURCHASE_TYPE"|"REGION"|"SERVICE"|"SERVICE_CODE"|"USAGE_TYPE"|"USAGE_TYPE_GROUP"|"RECORD_TYPE"|"OPERATING_SYSTEM"|"TENANCY"|"SCOPE"|"PLATFORM"|"SUBSCRIPTION_ID"|"LEGAL_ENTITY_NAME"|"DEPLOYMENT_OPTION"|"DATABASE_ENGINE"|"CACHE_ENGINE"|"INSTANCE_TYPE_FAMILY"|"BILLING_ENTITY"|"RESERVATION_ID"|"RESOURCE_ID"|"RIGHTSIZING_TYPE"|"SAVINGS_PLANS_TYPE"|"SAVINGS_PLAN_ARN"|"PAYMENT_OPTION",
      Values = list(
        "string"
      ),
      MatchOptions = list(
        "EQUALS"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"
      )
    ),
    Tags = list(
      Key = "string",
      Values = list(
        "string"
      ),
      MatchOptions = list(
        "EQUALS"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"
      )
    ),
    CostCategories = list(
      Key = "string",
      Values = list(
        "string"
      )
    )
  ),
  Metrics = list(
    "string"
  ),
  GroupBy = list(
    list(
      Type = "DIMENSION"|"TAG"|"COST_CATEGORY",
      Key = "string"
    )
  ),
  NextPageToken = "string"
)
}
}

\keyword{internal}
