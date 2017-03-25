#!/bin/sh

set -e

export VENDOR=samsung
export DEVICE=trltechnduos
./../../$VENDOR/trlte-common/setup-makefiles.sh $@
