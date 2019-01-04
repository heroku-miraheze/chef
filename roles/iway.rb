name "iway"
description "Role applied to all servers at iWay"

default_attributes(
  :accounts => {
    :users => {
      :cramer => { :status => :administrator }
    }
  },
  :hosted_by => "iWay",
  :location => "Zurich, Switzerland",
  :networking => {
    :nameservers => ["2001:8e0:ffff:ac1::1", "8.8.8.8", "8.8.4.4"],
    :roles => {
      :external => {
        :zone => "osm"
      }
    }
  }
)

override_attributes(
  :ntp => {
    :servers => ["0.ch.pool.ntp.org", "1.ch.pool.ntp.org", "europe.pool.ntp.org"]
  }
)

run_list(
  "role[ch]"
)