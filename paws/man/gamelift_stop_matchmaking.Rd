% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_stop_matchmaking}
\alias{gamelift_stop_matchmaking}
\title{Cancels a matchmaking ticket or match backfill ticket that is currently
being processed}
\usage{
gamelift_stop_matchmaking(TicketId)
}
\arguments{
\item{TicketId}{[required] A unique identifier for a matchmaking ticket.}
}
\description{
Cancels a matchmaking ticket or match backfill ticket that is currently
being processed. To stop the matchmaking operation, specify the ticket
ID. If successful, work on the ticket is stopped, and the ticket status
is changed to \code{CANCELLED}.
}
\details{
This call is also used to turn off automatic backfill for an individual
game session. This is for game sessions that are created with a
matchmaking configuration that has automatic backfill enabled. The
ticket ID is included in the \code{MatchmakerData} of an updated game session
object, which is provided to the game server.

If the action is successful, the service sends back an empty JSON struct
with the HTTP 200 response (not an empty HTTP body).

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html}{Add FlexMatch to a Game Client}

\strong{Related operations}
\itemize{
\item StartMatchmaking
\item DescribeMatchmaking
\item StopMatchmaking
\item AcceptMatch
\item StartMatchBackfill
}
}
\section{Request syntax}{
\preformatted{svc$stop_matchmaking(
  TicketId = "string"
)
}
}

\keyword{internal}
