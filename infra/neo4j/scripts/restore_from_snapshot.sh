#!/usr/bin/env bash
set -euo pipefail

container_name="${NEO4J_CONTAINER:-neo4j-local}"
password="${NEO4J_PASSWORD:-CambiaEstaClave123!}"
database="${NEO4J_DATABASE:-neo4j}"
snapshot_path="${1:-}"

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
snapshot_dir="$(cd "${script_dir}/.." && pwd)/snapshots"

if [[ -z "${snapshot_path}" ]]; then
  latest_snapshot="$(ls -1t "${snapshot_dir}"/*.cypher 2>/dev/null | head -n 1 || true)"
  if [[ -z "${latest_snapshot}" ]]; then
    echo "No snapshot found in ${snapshot_dir}" >&2
    exit 1
  fi
  snapshot_path="${latest_snapshot}"
fi

if [[ ! -f "${snapshot_path}" ]]; then
  echo "Snapshot not found: ${snapshot_path}" >&2
  exit 1
fi

docker exec "${container_name}" cypher-shell -u neo4j -p "${password}" -d "${database}" --non-interactive "MATCH (n) DETACH DELETE n;"
docker exec -i "${container_name}" cypher-shell -u neo4j -p "${password}" -d "${database}" --non-interactive < "${snapshot_path}"

echo "Restored ${snapshot_path} into ${container_name}/${database}"