% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/budgets_operations.R
\name{budgets_delete_notification}
\alias{budgets_delete_notification}
\title{Deletes a notification}
\usage{
budgets_delete_notification(AccountId, BudgetName, Notification)
}
\arguments{
\item{AccountId}{[required] The \code{accountId} that is associated with the budget whose notification
you want to delete.}

\item{BudgetName}{[required] The name of the budget whose notification you want to delete.}

\item{Notification}{[required] The notification that you want to delete.}
}
\description{
Deletes a notification.
}
\details{
Deleting a notification also deletes the subscribers that are associated
with the notification.
}
\section{Request syntax}{
\preformatted{svc$delete_notification(
  AccountId = "string",
  BudgetName = "string",
  Notification = list(
    NotificationType = "ACTUAL"|"FORECASTED",
    ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
    Threshold = 123.0,
    ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
    NotificationState = "OK"|"ALARM"
  )
)
}
}

\keyword{internal}
