#!/bin/sh

# Fix malformed entities
perl -pi -e 's/&([#a-z_0-9]+)[^#a-z0-9;]+;/&\1;/g' $@

# Fix malformed CDATA
perl -pi -e 's/<[^[>\\]*!\[CDATA\[/<!\[CDATA\[/g' $@

