context("Make SDK")

test_that("make_sdk", {
  path <- tempdir()

  # Create a fake API spec.
  path_in <- file.path(path, "in")
  api <- list(
    metadata = list(
      endpointPrefix = "foo",
      protocol = "json",
      serviceAbbreviation = "foo",
      serviceFullName = "AWS Foo",
      signatureVersion = "v4"
    ),
    operations = list(
      Foo = list(
        name = "Foo",
        http = list(
          method = "GET",
          requestUri = "/"
        ),
        input = list(
          shape = "FooRequest"
        ),
        output = list(
          shape = "FooResponse"
        ),
        documentation = "Foo"
      )
    ),
    shapes = list(
      FooRequest = list(
        type = "structure",
        required = list("Foo"),
        members = list(
          Foo = list(
            shape = "Foo",
            documentation = "Foo"
          ),
          Bar = list(
            shape = "Bar",
            documentation = "Bar"
          )
        )
      ),
      FooResponse = list(
        type = "structure",
        members = list(
          Foo = list(
            shape = "Foo",
            documentation = "Foo"
          ),
          Bar = list(
            shape = "Bar",
            documentation = "Bar"
          )
        )
      ),
      Foo = list(
        type = "string"
      ),
      Bar = list(
        type = "string"
      )
    ),
    documentation = "AWS Foo is an example AWS API."
  )
  api_path <- file.path(path_in, "apis", "example-2018-11-01.normal.json")
  dir.create(dirname(api_path), recursive = TRUE)
  jsonlite::write_json(api, api_path, auto_unbox = TRUE)

  region_config <- list(
    rules = list(
      "*/*" = list(
        endpoint = "{service}.{region}.amazonaws.com"
      )
    )
  )
  region_config_path <- file.path(path_in, "lib", "region_config_data.json")
  dir.create(dirname(region_config_path), recursive = TRUE)
  jsonlite::write_json(region_config, region_config_path, auto_unbox = TRUE)

  path_out <- file.path(path, "out")

  make_sdk(path_in, path_out)

  expect_true(dir.exists(path_out))
  expect_true(file.exists(file.path(path_out, "DESCRIPTION")))
  expect_true(file.exists(file.path(path_out, "NAMESPACE")))
  expect_true(dir.exists(file.path(path_out, "R")))
  expect_true(dir.exists(file.path(path_out, "man")))
  files <- c("foo_interfaces.R", "foo_operations.R", "foo_service.R")
  expect_true(all(files %in% list.files(file.path(path_out, "R"))))
})

test_that("list_apis", {
  temp <- tempdir()

  write("", file.path(temp, "api1-2018-01-01.normal.json"))
  write("", file.path(temp, "api2-2018-01-01.normal.json"))
  write("skip", file.path(temp, "skip.json"))

  actual <- list_apis(temp)
  expected <- c("api1", "api2")
  expect_equal(actual, expected)
})

# Requires that `R/customizations/dynamodb.R` exists.
test_that("copy customizations", {
  api <- list(
    name = "dynamodb"
  )
  path <- tempdir()

  copy_customizations(api, path)
  expect_true(file.exists(file.path(path, "dynamodb_customizations.R")))
})

test_that("copy customizations -- no customizations for package", {
  api <- list(
    name = "example"
  )
  path <- tempdir()

  copy_customizations(api, path)
  expect_false(file.exists(file.path(path, "aws.example_customizations.R")))
})