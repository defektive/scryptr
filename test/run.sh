#! /bin/bash

export SCRYPTR_TEST_BIN="test/fixtures/example-scryptr"

bin/scryptr upgrade -n $SCRYPTR_TEST_BIN


for f in test/tests/*; do
  name=`basename "$f"`
  echo "[+] Running $name"
  $f > test/$name.out

  diff test/$name.out test/controls/$name.out || echo '[!] Failed'
done

echo "[+] done"
sleep 2
rm test/*.out
