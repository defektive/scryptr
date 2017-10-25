#! /bin/bash

export SCRYPTR_TEST_BIN="test/fixtures/example-scryptr"

bin/scryptr upgrade -n $SCRYPTR_TEST_BIN


for f in test/tests/*; do
  name=`basename "$f"`
  echo "[+] Running $name"
  $f > test/$name.out

  diff test/$name.out test/controls/$name.out

  if [ $? -gt 0 ]; then
    echo '[!] Failed'
    echo -n 'Accept new results? [yN]'
    read accept
    echo $accept | grep -io "y" && mv test/$name.out test/controls/$name.out
  else
    rm test/$name.out
  fi
done

echo "[+] done"
sleep 1
rm test/*.out
