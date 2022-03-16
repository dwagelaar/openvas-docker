#!/bin/sh
set -euo pipefail
set -x

/usr/bin/docker export openvas | /usr/bin/docker import - dwagelaar/openvas:base
/usr/bin/docker push dwagelaar/openvas:base
