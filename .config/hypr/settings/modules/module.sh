#!/bin/bash
_getHeader "$name" "$author"
echo "ML4W .config Version" $(cat $HOME/.config/.version/name)
echo
echo "$homepage ($email)"
echo
echo $description
