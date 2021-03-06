% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_attach_load_balancer_tls_certificate}
\alias{lightsail_attach_load_balancer_tls_certificate}
\title{Attaches a Transport Layer Security (TLS) certificate to your load
balancer}
\usage{
lightsail_attach_load_balancer_tls_certificate(loadBalancerName,
  certificateName)
}
\arguments{
\item{loadBalancerName}{[required] The name of the load balancer to which you want to associate the SSL/TLS
certificate.}

\item{certificateName}{[required] The name of your SSL/TLS certificate.}
}
\description{
Attaches a Transport Layer Security (TLS) certificate to your load
balancer. TLS is just an updated, more secure version of Secure Socket
Layer (SSL).
}
\details{
Once you create and validate your certificate, you can attach it to your
load balancer. You can also use this API to rotate the certificates on
your account. Use the \code{AttachLoadBalancerTlsCertificate} action with the
non-attached certificate, and it will replace the existing one and
become the attached certificate.

The \code{AttachLoadBalancerTlsCertificate} operation supports tag-based
access control via resource tags applied to the resource identified by
\verb{load balancer name}. For more information, see the \href{https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags}{Lightsail Dev Guide}.
}
\section{Request syntax}{
\preformatted{svc$attach_load_balancer_tls_certificate(
  loadBalancerName = "string",
  certificateName = "string"
)
}
}

\keyword{internal}
