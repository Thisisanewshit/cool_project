variable "region" {
  default = "ap-southeast-1"
}

variable "repo_name" {
  default = "devsecops"
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "886697164571"
  ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::886697164571:role/role1"
      username = "role1"
      groups   = ["system:masters"]
    },
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::886697164571:user/super_dev"
      username = "super_dev"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::886697164571:user/root"
      username = "root"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::886697164571:user/guest1"
      username = "root"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::886697164571:user/tooling_pipeline_cd"
      username = "root"
      groups   = ["system:masters"]
    }
  ]
}
