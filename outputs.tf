output "projects_lookup_id" {
  description = "Map of id values across all projects_lookup, keyed the same as var.projects_lookup except keys with no id are omitted"
  value       = { for k, v in data.mongodbatlas_projects.projects_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "projects_lookup_items_per_page" {
  description = "Map of items_per_page values across all projects_lookup, keyed the same as var.projects_lookup except keys with no items_per_page are omitted"
  value       = { for k, v in data.mongodbatlas_projects.projects_lookup : k => v.items_per_page if v.items_per_page != null }
}
output "projects_lookup_page_num" {
  description = "Map of page_num values across all projects_lookup, keyed the same as var.projects_lookup except keys with no page_num are omitted"
  value       = { for k, v in data.mongodbatlas_projects.projects_lookup : k => v.page_num if v.page_num != null }
}
output "projects_lookup_results" {
  description = "Map of results values across all projects_lookup, keyed the same as var.projects_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_projects.projects_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}
output "projects_lookup_total_count" {
  description = "Map of total_count values across all projects_lookup, keyed the same as var.projects_lookup except keys with no total_count are omitted"
  value       = { for k, v in data.mongodbatlas_projects.projects_lookup : k => v.total_count if v.total_count != null }
}

