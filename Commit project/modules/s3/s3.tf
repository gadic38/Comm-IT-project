resource "aws_s3_bucket" "bucket" {
    arn                         = "arn:aws:s3:::s3testcommit"
    bucket                      = "s3testcommit"
    bucket_domain_name          = "s3testcommit.s3.amazonaws.com"
    bucket_regional_domain_name = "s3testcommit.s3.us-east-2.amazonaws.com"
    hosted_zone_id              = "Z2O1EMRO9K5GLX"
    id                          = "s3testcommit"
    object_lock_enabled         = false
    region                      = "us-east-2"
    request_payer               = "BucketOwner"
    tags                        = {}
    tags_all                    = {}

    grant {
        id          = "0e52ad758b602cfe1bcaea38eb6b8f17343c54cd01555f0e73a38e743c768738"
        permissions = [
            "FULL_CONTROL",
        ]
        type        = "CanonicalUser"
    }

    server_side_encryption_configuration {
        rule {
            bucket_key_enabled = false

            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }

    versioning {
        enabled    = false
        mfa_delete = false
    }
}