#!/usr/bin/env sh

# Making sure that we include the right one.
# shellcheck source=./0_common.in
. "$(dirname "${0}")/0_common.in"

whoami
ls
uname
pwd