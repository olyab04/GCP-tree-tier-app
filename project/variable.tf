variable "project_name" {
  type        = string
  default     = "oeyluucehelhmtkb"
  description = "enter your project name"
}


variable "region" {
  type        = string
  default     = "us-west4"
  description = "add desired region"
}


variable "zone" {
  type        = string
  default     = "us-west4-b"
  description = "zone where to deploy resource"
}



variable "dbinstance_name" {
  type        = string
  default     = "wordpressdb"
  description = "name of database instance"
}


variable "data_base_version"{
  type        =string
  default     ="MYSQL_5_6"
  description ="specifies the database version"
}


variable "db_password"{
  type        =string
  default     ="password"
  description ="description"
}


variable "db_username" {
  type        = string
  default     = "olga04"
  description = "input the database authorized user "
}



variable "db_name" {
  type        = string
  default     = "random"
  description = "description"
}


variable "db_host"{
  type        =string
  default     ="%"
  description ="description"
  
}

