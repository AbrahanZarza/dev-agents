#!/usr/bin/env bash
set -Eeuo pipefail

dockerd > /tmp/dockerd.log 2>&1 &
DOCKERD_PID=$!

for _ in $(seq 1 60); do
    if docker info >/dev/null 2>&1; then
        exec "$@"
    fi

    if ! kill -0 "$DOCKERD_PID" 2>/dev/null; then
        cat /tmp/dockerd.log >&2
        echo "Error: dockerd can not start." >&2
        exit 1
    fi

    sleep 1
done

cat /tmp/dockerd.log >&2
echo "Error: timeout waiting for daemon Docker." >&2
exit 1
