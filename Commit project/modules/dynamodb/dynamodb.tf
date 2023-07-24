resource "aws_dynamodb_table" "dynamotable" {
    arn                         = "arn:aws:dynamodb:us-east-2:941783655266:table/dynamousere"
    billing_mode                = "PROVISIONED"
    deletion_protection_enabled = false
    hash_key                    = "username"
    id                          = "dynamousere"
    name                        = "dynamousere"
    read_capacity               = 1
    stream_arn                  = "arn:aws:dynamodb:us-east-2:941783655266:table/dynamousere/stream/2023-07-20T14:29:09.301"
    stream_enabled              = true
    stream_label                = "2023-07-20T14:29:09.301"
    stream_view_type            = "NEW_AND_OLD_IMAGES"
    table_class                 = "STANDARD"
    tags                        = {}
    tags_all                    = {}
    write_capacity              = 1

    attribute {
        name = "username"
        type = "S"
    }
}