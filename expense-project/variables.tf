variable "instances_names" {
    type = list(string)
    default = ["mysql","backend","frontend"]
}

variable "zone_id" {
    default = "Z0146381VWR2976I73T4"
}

variable "domain_name" {
    default = "manohar.fun"
}