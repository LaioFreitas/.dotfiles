
#!/bin/bash

LOCK="/tmp/waybar-cava.lock"

exec 9>"$LOCK" || exit 1
flock -n 9 || exit 0

bars="▁▂▃▄▅▆▇█"
dict="s/;//g;"
i=0
while [ $i -lt ${#bars} ]; do
  dict="${dict}s/$i/${bars:$i:1}/g;"
  i=$((i+1))
done

cava -p <(cat <<EOF
[general]
bars = 20
framerate = 60


[input]
method = pulse

[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7
EOF
) | sed "$dict"
ne
