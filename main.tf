resource "datadog_dashboard" "memcached" {
  count = var.enabled ? 1 : 0

  title       = "${var.product_domain} - ${var.cluster} - ${var.environment} - Memcached"
  description = "A generated timeboard for Memcached"
  layout_type = "ordered"

  template_variable {
    default = var.cluster
    name    = "cluster"
    prefix  = "cacheclusterid"
  }

  template_variable {
    default = var.environment
    name    = "environment"
    prefix  = "environment"
  }

  widget {
    timeseries_definition {
      title = "Bytes Read into Memcached"

      request {
        q            = "sum:aws.elasticache.bytes_read_into_memcached{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Bytes Used for Cache Items"

      request {
        q            = "sum:aws.elasticache.bytes_used_for_cache_items{$cluster, $environment} by {cacheclusterid}"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Bytes Used for Hash"

      request {
        q            = "sum:aws.elasticache.bytes_used_for_hash{$cluster, $environment} by {cacheclusterid}"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Bytes Written out from Memcached"

      request {
        q            = "sum:aws.elasticache.bytes_written_out_from_memcached{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Cas Badval"

      request {
        q            = "sum:aws.elasticache.cas_badval{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Cas Hits"

      request {
        q            = "sum:aws.elasticache.cas_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Cas Misses"

      request {
        q            = "sum:aws.elasticache.cas_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Cmd Config Get"

      request {
        q            = "sum:aws.elasticache.cmd_config_get{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Cmd Flush"

      request {
        q            = "sum:aws.elasticache.cmd_flush{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Cmd Get"

      request {
        q            = "sum:aws.elasticache.cmd_get{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Cmd Set"

      request {
        q            = "sum:aws.elasticache.cmd_set{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Cmd Touch"

      request {
        q            = "sum:aws.elasticache.cmd_touch{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "CPU Utilization"

      request {
        q            = "avg:aws.elasticache.cpuutilization{$cluster, $environment} by {cacheclusterid}"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Curr Config"

      request {
        q            = "avg:aws.elasticache.curr_config{$cluster, $environment} by {cacheclusterid}"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Curr Connections"

      request {
        q            = "sum:aws.elasticache.curr_connections{$cluster, $environment} by {cacheclusterid}"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Curr Items"

      request {
        q            = "sum:aws.elasticache.curr_items{$cluster, $environment} by {cacheclusterid}"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Decr Hits"

      request {
        q            = "sum:aws.elasticache.decr_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Decr Misses"

      request {
        q            = "sum:aws.elasticache.decr_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Delete Hits"

      request {
        q            = "sum:aws.elasticache.delete_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Delete Misses"

      request {
        q            = "sum:aws.elasticache.delete_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Evicted Unfetched"

      request {
        q            = "sum:aws.elasticache.evicted_unfetched{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Evictions"

      request {
        q            = "sum:aws.elasticache.evictions{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Expired Unfetched"

      request {
        q            = "sum:aws.elasticache.expired_unfetched{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Freeable Memory"

      request {
        q            = "sum:aws.elasticache.freeable_memory{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Get Hits"

      request {
        q            = "sum:aws.elasticache.get_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Get Misses"

      request {
        q            = "sum:aws.elasticache.get_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Incr Hits"

      request {
        q            = "sum:aws.elasticache.incr_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Incr Misses"

      request {
        q            = "sum:aws.elasticache.incr_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Network Bytes In"

      request {
        q            = "sum:aws.elasticache.network_bytes_in{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Network Bytes Out"

      request {
        q            = "sum:aws.elasticache.network_bytes_out{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "New Connections"

      request {
        q            = "sum:aws.elasticache.new_connections{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "New Items"

      request {
        q            = "sum:aws.elasticache.new_items{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Reclaimed"

      request {
        q            = "sum:aws.elasticache.reclaimed{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Slabs Moved"

      request {
        q            = "sum:aws.elasticache.slabs_moved{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Swap Usage"

      request {
        q            = "sum:aws.elasticache.swap_usage{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Touch Hits"

      request {
        q            = "sum:aws.elasticache.touch_hits{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Touch Misses"

      request {
        q            = "sum:aws.elasticache.touch_misses{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }

  widget {
    timeseries_definition {
      title = "Unused Memory"

      request {
        q            = "sum:aws.elasticache.unused_memory{$cluster, $environment} by {cacheclusterid}.as_count()"
        display_type = "area"
      }
    }
  }
}

