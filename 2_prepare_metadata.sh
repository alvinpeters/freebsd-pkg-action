#!/usr/bin/env sh

# Making sure that we include the right one.
# shellcheck source=./0_common.in
. "$(dirname "${0}")/0_common.in"
# Check for missing inputs
check_var PKG_NAME
#
check_var GITHUB_OUTPUT

METADATA_DIR="$WORK_DIR/_pkg_metadata"

mkdir "$METADATA_DIR"

cat << EOF > manifest
name: ${NAME}
version: ${VERSION}
origin: mail/stalwart
www: https://stalw.art/
maintainer: alvin@striczkof.io
comment: With FoundationDB support.
prefix: /usr/local
desc: Stalwart Mail Server is an open-source mail server solution. FoundationDB compatible.
EOF

