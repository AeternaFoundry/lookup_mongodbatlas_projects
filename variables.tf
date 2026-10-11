variable "projects_lookup" {
  description = <<EOT
Map of projects_lookup, attributes below
Optional:
    - items_per_page
    - page_num
EOT

  type = map(object({
    items_per_page = optional(number)
    page_num       = optional(number)
  }))
}

