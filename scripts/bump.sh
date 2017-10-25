#! /bin/bash

BUMP='patch'
CURRENT_VERSION_LINE=`grep version bin/scryptr`
CURRENT_VERSION=`echo $CURRENT_VERSION_LINE | sed 's/[^0-9.]//g'`

MAJOR=`echo $CURRENT_VERSION | cut -d. -f 1`
MINOR=`echo $CURRENT_VERSION | cut -d. -f 2`
PATCH=`echo $CURRENT_VERSION | cut -d. -f 3`

if [ ! -z $1 ]; then
  BUMP=$1
fi


case $BUMP in
  major)

  MAJOR=$(( $MAJOR + 1))
  MINOR=0
  PATCH=0
  ;;
  minor)
  MINOR=$(( $MINOR + 1))
  PATCH=0

  ;;
  *)
  PATCH=$(( $PATCH + 1))
  ;;
esac

NEW_VERSION="$MAJOR.$MINOR.$PATCH"
NEW_VERSION_LINE="##| version: $NEW_VERSION"

echo "[+] $NEW_VERSION"
sed -i "s/$CURRENT_VERSION_LINE/$NEW_VERSION_LINE/g" bin/scryptr
