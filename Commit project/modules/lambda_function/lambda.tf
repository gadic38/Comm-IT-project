resource "aws_lambda_function" "dynamosavetos3" {
    architectures                  = [
        "x86_64",
    ]
    arn                            = "arn:aws:lambda:us-east-2:941783655266:function:dynamosavetos3"
    function_name                  = "dynamosavetos3"
    handler                        = "lambda_function.lambda_handler"
    id                             = "dynamosavetos3"
    invoke_arn                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:941783655266:function:dynamosavetos3/invocations"
    layers                         = []
    memory_size                    = 128
    package_type                   = "Zip"
    qualified_arn                  = "arn:aws:lambda:us-east-2:941783655266:function:dynamosavetos3:$LATEST"
    qualified_invoke_arn           = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:941783655266:function:dynamosavetos3:$LATEST/invocations"
    reserved_concurrent_executions = -1
    role                           = "arn:aws:iam::941783655266:role/service-role/dynamosavetos3-role-u7pbaqxd"
    runtime                        = "python3.8"
    skip_destroy                   = false
    source_code_hash               = "VL+Fjxz4Ld02IKRJuCUyut7/8e+WnvjPBm9CAHKqtu4="
    source_code_size               = 468
    tags                           = {}
    tags_all                       = {}
    timeout                        = 3
    version                        = "$LATEST"

    ephemeral_storage {
        size = 512
    }

    tracing_config {
        mode = "PassThrough"
}
}

resource "aws_iam_role" "dynamodb_role" {
  name               = "dynamosavetos3-role-u7pbaqxd "
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}


resource "aws_lambda_function" "my_web" {
    architectures                  = [
        "x86_64",
    ]
    arn                            = "arn:aws:lambda:us-east-2:941783655266:function:myweb"
    function_name                  = "myweb"
    handler                        = "lambda_function.lambda_handler"
    id                             = "myweb"
    invoke_arn                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:941783655266:function:myweb/invocations"
    last_modified                  = "2023-07-22T14:16:07.000+0000"
    layers                         = []
    memory_size                    = 128
    package_type                   = "Zip"
    qualified_arn                  = "arn:aws:lambda:us-east-2:941783655266:function:myweb:$LATEST"
    qualified_invoke_arn           = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:941783655266:function:myweb:$LATEST/invocations"
    reserved_concurrent_executions = -1
    role                           = "arn:aws:iam::941783655266:role/service-role/myweb-role-p6g0tmq8"
    runtime                        = "python3.7"
    skip_destroy                   = false
    source_code_hash               = "u5GHp5/XGVjfz4l9YHLtIHwLwEi9OtJyDKpPPqGC9hA="
    source_code_size               = 539
    tags                           = {}
    tags_all                       = {}
    timeout                        = 3
    version                        = "$LATEST"

    ephemeral_storage {
        size = 512
    }

    tracing_config {
        mode = "PassThrough"
}
}

resource "aws_iam_role" "web_role" {
  name               = "myweb-role-p6g0tmq8"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}



resource "aws_lambda_function" "test_lambda" {
    architectures                  = [
        "x86_64",
    ]
    arn                            = "arn:aws:lambda:us-east-2:941783655266:function:test"
    function_name                  = "test"
    handler                        = "lambda_function.lambda_handler"
    id                             = "test"
    invoke_arn                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:941783655266:function:test/invocations"
    last_modified                  = "2023-07-21T16:49:42.000+0000"
    layers                         = []
    memory_size                    = 128
    package_type                   = "Zip"
    qualified_arn                  = "arn:aws:lambda:us-east-2:941783655266:function:test:$LATEST"
    qualified_invoke_arn           = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:941783655266:function:test:$LATEST/invocations"
    reserved_concurrent_executions = -1
    role                           = "arn:aws:iam::941783655266:role/service-role/test-role-m7jhx0h0"
    runtime                        = "python3.7"
    skip_destroy                   = false
    source_code_hash               = "W1LrS5Prad8E0QE49sBkmiXcdqC//0VB3XWuvvq29cE="
    source_code_size               = 451
    tags                           = {}
    tags_all                       = {}
    timeout                        = 3
    version                        = "$LATEST"

    environment {
        variables = {
            "dynamousere" = "dynamousere"
        }
    }

    ephemeral_storage {
        size = 512
    }

    tracing_config {
        mode = "PassThrough"
}
}
resource "aws_iam_role" "test" {
  name               = "test-role-m7jhx0h0"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}


resource "aws_lambda_function" "dynamotoparameterstore" {
    architectures                  = [
        "x86_64",
    ]
    arn                            = "arn:aws:lambda:us-east-2:941783655266:function:dynamotoparameterstore"
    function_name                  = "dynamotoparameterstore"
    handler                        = "lambda_function.lambda_handler"
    id                             = "dynamotoparameterstore"
    invoke_arn                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:941783655266:function:dynamotoparameterstore/invocations"
    last_modified                  = "2023-07-23T06:35:11.000+0000"
    layers                         = []
    memory_size                    = 128
    package_type                   = "Zip"
    qualified_arn                  = "arn:aws:lambda:us-east-2:941783655266:function:dynamotoparameterstore:$LATEST"
    qualified_invoke_arn           = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:941783655266:function:dynamotoparameterstore:$LATEST/invocations"
    reserved_concurrent_executions = -1
    role                           = "arn:aws:iam::941783655266:role/service-role/dynamotoparameterstore-role-p5np2e9y"
    runtime                        = "python3.8"
    skip_destroy                   = false
    source_code_hash               = "pMo6Xl98ODN/HcekDexovJwN+On0ESmV6bVh1zEINwM="
    source_code_size               = 548
    tags                           = {}
    tags_all                       = {}
    timeout                        = 3
    version                        = "$LATEST"

    ephemeral_storage {
        size = 512
    }

    tracing_config {
        mode = "PassThrough"
}
}


resource "aws_iam_role" "parameterstore_role" {
  name               = "dynamotoparameterstore-role-p5np2e9y"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}