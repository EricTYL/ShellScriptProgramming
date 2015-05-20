# This shell script uses ping command to test local area network.
# It will show all machines' status.

# Thank for vbird, a linux master in Taiwan.

#!/bin/bash
for siteip in $(seq 1 254)
do
    site="192.168.1.${siteip}"
      ping -c1 -W1 ${site} &> /dev/null
        if [ "$?" == "0" ]; then
              echo "$site is UP"
        else
              echo "$site is DOWN"
        fi
done
