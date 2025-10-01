variable "project"      { type = string }
variable "region"       { type = string }
variable "zone"         { type = string }
variable "name"         { type = string }
variable "machine_type" { type = string }
variable "image"        { type = string }
variable "labels"       { type = map(string) default = {} }
