#!/bin/sh
grep -v '{\|}\|NA' endpoint | cut -d '"' -f 2 | xargs -I {} sh -c 'echo -n "{} "; curl -o /dev/null -s -w %{time_total}\\n http://{}'
