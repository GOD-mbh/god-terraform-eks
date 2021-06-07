#variables

variable "availability_zones" {
  description = "Availability zones for project"
  type        = list(any)
  default     = []
}

variable "project" {
  type        = string
  default     = null
  description = "Project name"
}

variable "cluster_name" {
  type        = string
  default     = "test"
  description = "EKS cluster name"
}

variable "cluster_version" {
  type        = string
  description = "EKS cluster version"
  default     = "1.20"
}

variable "vpc_id" {
  type        = string
  default     = null
  description = "AWS VPC ID"
}

variable "subnets" {
  type        = list(any)
  description = "VPC subnets"
}

variable "admin_arns" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}

variable "user_arns" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}

######################################### On-demand instances
variable "on_demand_common_max_cluster_size" {
  type        = string
  description = "Max number of on demand instances in EKS autoscaling group"
  default     = "2"
}

variable "on_demand_common_min_cluster_size" {
  type        = string
  description = "Min number of on demand instances in EKS autoscaling group"
  default     = "1"
}

variable "on_demand_common_desired_capacity" {
  type        = string
  description = "Desired number of on_demand instances in EKS autoscaling group"
  default     = "1"
}

variable "on_demand_common_instance_type" {
  description = "EC2 on_demand Instance type"
  default     = "m5.large"
}

variable "on_demand_common_override_instance_types" {
  description = "EC2 on_demand override instance types"
  default     = ["m5.large", "m5.xlarge", "m5.2xlarge"]
}

variable "on_demand_common_allocation_strategy" {
  description = "Strategy to use when launching on-demand instances. Valid values: prioritized"
  default     = "prioritized"
}

variable "on_demand_common_base_capacity" {
  description = "Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances"
  default     = "0"

}

variable "on_demand_common_percentage_above_base_capacity" {
  description = "Percentage split between on-demand and Spot instances above the base on-demand capacity"
  default     = "0"
}

variable "on_demand_common_asg_recreate_on_change" {
  description = "Recreate the autoscaling group when the Launch Template or Launch Configuration change."
  default     = "false"
}

############################################ On-demand GPU instance
variable "on_demand_gpu_max_cluster_size" {
  type        = string
  description = "Max number of on demand instances in EKS autoscaling group"
  default     = "2"
}

variable "on_demand_gpu_min_cluster_size" {
  type        = string
  description = "Min number of on demand instances in EKS autoscaling group"
  default     = "0"
}

variable "on_demand_gpu_desired_capacity" {
  type        = string
  description = "Desired number of on_demand instances in EKS autoscaling group"
  default     = "0"
}

variable "on_demand_gpu_instance_type" {
  description = "EC2 on_demand Instance type"
  default     = "p2.xlarge"
}

variable "on_demand_gpu_override_instance_types" {
  description = "EC2 on_demand Instance types for overriding"
  default     = ["g4dn.xlarge"]
}

variable "on_demand_gpu_resource_count" {
  description = "A number of GPUs resopurces for the instance type"
  default     = 1
}

variable "on_demand_gpu_allocation_strategy" {
  description = "Strategy to use when launching on-demand instances. Valid values: prioritized"
  default     = "prioritized"
}

variable "on_demand_gpu_base_capacity" {
  description = "Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances"
  default     = "0"
}

variable "on_demand_gpu_percentage_above_base_capacity" {
  description = "Percentage split between on-demand and Spot instances above the base on-demand capacity"
  default     = "0"
}

variable "on_demand_gpu_asg_recreate_on_change" {
  description = "Recreate the autoscaling group when the Launch Template or Launch Configuration change."
  default     = "false"
}

######################################### On-demand CPU instance
variable "on_demand_cpu_max_cluster_size" {
  type        = string
  description = "Max number of on demand instances in EKS autoscaling group"
  default     = "2"
}

variable "on_demand_cpu_min_cluster_size" {
  type        = string
  description = "Min number of on demand instances in EKS autoscaling group"
  default     = "0"
}

variable "on_demand_cpu_desired_capacity" {
  type        = string
  description = "Desired number of on_demand instances in EKS autoscaling group"
  default     = "0"
}

variable "on_demand_cpu_instance_type" {
  description = "EC2 on_demand Instance type"
  default     = "c5.xlarge"
}

variable "on_demand_cpu_override_instance_types" {
  description = "EC2 on_demand Instance type"
  default     = ["c5.xlarge", "c5.2xlarge", "c5n.xlarge"]
}

variable "on_demand_cpu_allocation_strategy" {
  description = "Strategy to use when launching on-demand instances. Valid values: prioritized"
  default     = "prioritized"
}

variable "on_demand_cpu_base_capacity" {
  description = "Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances"
  default     = "0"

}

variable "on_demand_cpu_percentage_above_base_capacity" {
  description = "Percentage split between on-demand and Spot instances above the base on-demand capacity"
  default     = "0"
}

variable "on_demand_cpu_asg_recreate_on_change" {
  description = "Recreate the autoscaling group when the Launch Template or Launch Configuration change."
  default     = "false"
}