# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' AWS Migration Hub Config
#'
#' @description
#' The AWS Migration Hub home region APIs are available specifically for
#' working with your Migration Hub home region. You can use these APIs to
#' determine a home region, as well as to create and work with controls
#' that describe the home region.
#' 
#' -   You must make API calls for write actions (create, notify,
#'     associate, disassociate, import, or put) while in your home region,
#'     or a `HomeRegionNotSetException` error is returned.
#' 
#' -   API calls for read actions (list, describe, stop, and delete) are
#'     permitted outside of your home region.
#' 
#' -   If you call a write API outside the home region, an
#'     `InvalidInputException` is returned.
#' 
#' -   You can call `GetHomeRegion` action to obtain the account\'s
#'     Migration Hub home region.
#' 
#' For specific API usage, see the sections that follow in this AWS
#' Migration Hub Home Region API reference.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- migrationhubconfig(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string"
#'     ),
#'     endpoint = "string",
#'     region = "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- migrationhubconfig()
#' svc$create_home_region_control(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=migrationhubconfig_create_home_region_control]{create_home_region_control} \tab This API sets up the home region for the calling account only \cr
#'  \link[=migrationhubconfig_describe_home_region_controls]{describe_home_region_controls} \tab This API permits filtering on the ControlId and HomeRegion fields\cr
#'  \link[=migrationhubconfig_get_home_region]{get_home_region} \tab Returns the calling account’s home region, if configured 
#' }
#'
#' @rdname migrationhubconfig
#' @export
migrationhubconfig <- function(config = list()) {
  svc <- .migrationhubconfig$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.migrationhubconfig <- list()

.migrationhubconfig$operations <- list()

.migrationhubconfig$metadata <- list(
  service_name = "migrationhubconfig",
  endpoints = list("*" = list(endpoint = "migrationhubconfig.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "migrationhubconfig.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "migrationhubconfig.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "migrationhubconfig.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "MigrationHub Config",
  api_version = "2019-06-30",
  signing_name = "mgh",
  json_version = "1.1",
  target_prefix = "AWSMigrationHubMultiAccountService"
)

.migrationhubconfig$service <- function(config = list()) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.migrationhubconfig$metadata, handlers, config)
}
