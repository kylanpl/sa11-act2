def parse_log_entry(log)
  # You weren't very specific with what a log line is allowed to have, so I just assumed one or more characters
  pattern = /^(INFO|WARN|ERROR): (.+)$/
  match = log.match(pattern)
  [match[1], match[2]] if match
  end
log_entry = "ERROR: Disk space low"
p parse_log_entry(log_entry).inspect
