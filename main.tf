data "mongodbatlas_projects" "projects_lookup" {
  for_each = var.projects_lookup

  items_per_page = each.value.items_per_page
  page_num       = each.value.page_num
}

