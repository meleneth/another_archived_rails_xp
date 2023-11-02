#!/bin/bash

docker run -it --rm -v /home/meleneth/code/tester_rails/blazemeter:/bzt-configs -v /home/meleneth/code/tester_rails/artifacts:/tmp/artifacts blazemeter/taurus bzt.yml

