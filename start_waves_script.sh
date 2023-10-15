#! /bin/bash

cd /home/jwow/asa-box
git pull

killall pd

pd -nogui -noadc /home/jwow/asa-box/main_waves.pd /home/jwow/asa-box/mother.pd

exit 0


