#! /bin/bash

echo "[+] Starting Build"

test/run.sh
scripts/generate_docs.sh

echo "[+] Done"

# eventually we should add version bumping and tagging
