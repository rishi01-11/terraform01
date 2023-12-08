variable "instance_configuration" {
  type = list(object({
    ami_id = string
    instance_type = string
    
  }))
}