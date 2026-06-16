#!/bin/bash
set -e
cd /tmp
rm -rf scanpy_repo
git clone --depth 200 https://github.com/scverse/scanpy.git /tmp/scanpy_repo
cd /tmp/scanpy_repo

echo "=== LAST 30 COMMITS ==="
git log --oneline -30

echo ""
echo "=== TOTAL COMMITS ==="
git log --oneline | wc -l

echo ""
echo "=== TOP 10 CONTRIBUTORS (by shortlog) ==="
git shortlog -sn -10

echo ""
echo "=== ALL AUTHORS (one per line, for counting) ==="
git log --format="%aN"
