#!/usr/bin/env bats

@test "Test the motd test message is installed and executable" {
  run-parts /etc/update-motd.d/ | grep "Test motd message"
}

@test "Test motd message is shown on login" {
  # Cant figure out how to do a login in bats tests
  #run login kitchen -f
  #cat /var/run/motd | grep "Test motd message"
}
