variable "iam_user_policy_attachments" {
  description = <<EOT
Map of iam_user_policy_attachments, attributes below
Required:
    - policy_arn
    - user
EOT

  type = map(object({
    policy_arn = string
    user       = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

