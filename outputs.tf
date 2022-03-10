output "timeboard_title" {
  value       = join(",", datadog_dashboard.memcached.*.title)
  description = "The title of datadog timeboard for Memcached"
}
