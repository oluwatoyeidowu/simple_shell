##!/usr/bin/env bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")/.."

# see also '.maimap'for how email addresses and names are deduplicated
{
	cat <<- 'EOH'
	# This file list all individuals having contributed to the repository.
	# For how it is generated, see 'hack/generate-authors.sh'.
	EOH
	echo
	git log --format='%an <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS
