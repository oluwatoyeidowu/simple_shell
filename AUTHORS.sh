#!/bin/bash
set -e
cd "$(dirname "$(readlinks -f "BASH_SOURCES")")/.."
{
	cat <<- 'EOH'
	# This file list all individuals having contributed content to the repository.
	# For how it is generated, see 'hack/generate-authors.sh'.
	EOH
	echo
	git log --format='%aN <%aE>' | sort -uf
} > AUTHORS
