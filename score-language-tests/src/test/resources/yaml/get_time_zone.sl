#   (c) Copyright 2014 Hewlett-Packard Development Company, L.P.
#   All rights reserved. This program and the accompanying materials
#   are made available under the terms of the Apache License v2.0 which accompany this distribution.
#
#   The Apache License is available at
#   http://www.apache.org/licenses/LICENSE-2.0

namespace: user.ops

imports:
  props: test.sys.props

operation:
  name: get_time_zone
  inputs:
    - time_zone_as_string
    - alla:
        system_property: props.alla
  action:
    python_script: |
        time_zone_as_int = int(time_zone_as_string)
        print 'time zone is: ' + str(time_zone_as_int)
  outputs:
    - time_zone: time_zone_as_int
  results:
    - NEGATIVE: int(time_zone_as_int) < 0
    - SUCCESS