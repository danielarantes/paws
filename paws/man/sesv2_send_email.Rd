% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesv2_operations.R
\name{sesv2_send_email}
\alias{sesv2_send_email}
\title{Sends an email message}
\usage{
sesv2_send_email(FromEmailAddress, Destination, ReplyToAddresses,
  FeedbackForwardingEmailAddress, Content, EmailTags,
  ConfigurationSetName)
}
\arguments{
\item{FromEmailAddress}{The email address that you want to use as the \"From\" address for the
email. The address that you specify has to be verified.}

\item{Destination}{[required] An object that contains the recipients of the email message.}

\item{ReplyToAddresses}{The \"Reply-to\" email addresses for the message. When the recipient
replies to the message, each Reply-to address receives the reply.}

\item{FeedbackForwardingEmailAddress}{The address that you want bounce and complaint notifications to be sent
to.}

\item{Content}{[required] An object that contains the body of the message. You can send either a
Simple message or a Raw message.}

\item{EmailTags}{A list of tags, in the form of name/value pairs, to apply to an email
that you send using the \code{SendEmail} operation. Tags correspond to
characteristics of the email that you define, so that you can publish
email sending events.}

\item{ConfigurationSetName}{The name of the configuration set that you want to use when sending the
email.}
}
\description{
Sends an email message. You can use the Amazon SES API v2 to send two
types of messages:
}
\details{
\itemize{
\item \strong{Simple} -- A standard email message. When you create this type of
message, you specify the sender, the recipient, and the message
body, and Amazon SES assembles the message for you.
\item \strong{Raw} -- A raw, MIME-formatted email message. When you send this
type of email, you have to specify all of the message headers, as
well as the message body. You can use this message type to send
messages that contain attachments. The message that you specify has
to be a valid MIME message.
}
}
\section{Request syntax}{
\preformatted{svc$send_email(
  FromEmailAddress = "string",
  Destination = list(
    ToAddresses = list(
      "string"
    ),
    CcAddresses = list(
      "string"
    ),
    BccAddresses = list(
      "string"
    )
  ),
  ReplyToAddresses = list(
    "string"
  ),
  FeedbackForwardingEmailAddress = "string",
  Content = list(
    Simple = list(
      Subject = list(
        Data = "string",
        Charset = "string"
      ),
      Body = list(
        Text = list(
          Data = "string",
          Charset = "string"
        ),
        Html = list(
          Data = "string",
          Charset = "string"
        )
      )
    ),
    Raw = list(
      Data = raw
    ),
    Template = list(
      TemplateArn = "string",
      TemplateData = "string"
    )
  ),
  EmailTags = list(
    list(
      Name = "string",
      Value = "string"
    )
  ),
  ConfigurationSetName = "string"
)
}
}

\keyword{internal}
