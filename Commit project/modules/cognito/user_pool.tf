# data.aws_partition.current:
data "aws_partition" "current" {
    dns_suffix         = "amazonaws.com"
    id                 = "aws"
    partition          = "aws"
    reverse_dns_prefix = "com.amazonaws"
}

# aws_cognito_managed_user_pool_client.example:
resource "aws_cognito_managed_user_pool_client" "example" {
    access_token_validity                         = 60
    allowed_oauth_flows                           = [
        "code",
    ]
    allowed_oauth_flows_user_pool_client          = true
    allowed_oauth_scopes                          = [
        "email",
        "openid",
        "phone",
        "testapires/reade.hello",
    ]
    auth_session_validity                         = 3
    callback_urls                                 = [
        "https://ukuhedoxda.execute-api.us-east-2.amazonaws.com/default/myweb",
    ]
    client_secret                                 = true
    enable_propagate_additional_user_context_data = false
    enable_token_revocation                       = true
    explicit_auth_flows                           = [
        "ALLOW_ADMIN_USER_PASSWORD_AUTH",
        "ALLOW_CUSTOM_AUTH",
        "ALLOW_REFRESH_TOKEN_AUTH",
        "ALLOW_USER_PASSWORD_AUTH",
        "ALLOW_USER_SRP_AUTH",
    ]
    id                                            = "3hr6on4qphuntngrq9fleim67o"
    id_token_validity                             = 60
    name                                          = "client"
    prevent_user_existence_errors                 = "ENABLED"
    refresh_token_validity                        = 30
    supported_identity_providers                  = [
        "COGNITO",
    ]
    user_pool_id                                  = "us-east-2_uTcmfPesh"

    token_validity_units {
        access_token  = "minutes"
        id_token      = "minutes"
        refresh_token = "days"
    }
}

# aws_cognito_user_pool.pool:
resource "aws_cognito_user_pool" "pool" {
    alias_attributes          = [
        "email",
    ]
    arn                       = "arn:aws:cognito-idp:us-east-2:941783655266:userpool/us-east-2_uTcmfPesh"
    auto_verified_attributes  = [
        "email",
    ]
    creation_date             = "2023-07-21T10:06:45Z"
    deletion_protection       = "ACTIVE"
    domain                    = "testapisec"
    endpoint                  = "cognito-idp.us-east-2.amazonaws.com/us-east-2_uTcmfPesh"
    estimated_number_of_users = 1
    id                        = "us-east-2_uTcmfPesh"
    last_modified_date        = "2023-07-21T16:22:13Z"
    mfa_configuration         = "OFF"
    name                      = "apigatewayoserpool"

    account_recovery_setting {
        recovery_mechanism {
            name     = "verified_email"
            priority = 1
        }
    }

    admin_create_user_config {
        allow_admin_create_user_only = false
    }

    email_configuration {
        email_sending_account = "COGNITO_DEFAULT"
    }

    lambda_config {
        post_confirmation = "arn:aws:lambda:us-east-2:941783655266:function:test"
    }

    password_policy {
        minimum_length                   = 6
        require_lowercase                = false
        require_numbers                  = false
        require_symbols                  = false
        require_uppercase                = false
        temporary_password_validity_days = 7
    }

    schema {
        attribute_data_type      = "String"
        developer_only_attribute = false
        mutable                  = true
        name                     = "email"
        required                 = true

        string_attribute_constraints {
            max_length = "2048"
            min_length = "0"
        }
    }

    user_attribute_update_settings {
        attributes_require_verification_before_update = [
            "email",
        ]
    }

    username_configuration {
        case_sensitive = false
    }

    verification_message_template {
        default_email_option = "CONFIRM_WITH_CODE"
    }
}
