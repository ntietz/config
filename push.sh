#!/bin/bash

places="nicholas@ntietz.com ntietz@neptune.cs.kent.edu ntietz@acm.cs.kent.edu"

for each in $places
do
    echo "Updating on $each..."
    ssh $each "cd ~/Repositories/config; git pull"
    echo "Done."
done

