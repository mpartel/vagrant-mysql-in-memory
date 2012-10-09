name "mysql_server"
description "Configure host to run MySQL server."
run_list(
  "recipe[mysql::server]"
)
default_attributes(
  :mysql => {
    :tunable => {
      :key_buffer => "384M",
      :table_cache => "4096"
    }
  }
)
