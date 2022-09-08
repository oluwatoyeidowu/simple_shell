##!/usr/bin/env bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")/.."

# see also ".mailmap" for how email address and names are deduplicated

{
	cat <<- 'EOH'
		# This file list all individuals having contributed content to the repository
		# For how it is generated, see 'hack/generate-authors.sh'.
	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS
