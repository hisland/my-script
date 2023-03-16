#!/bin/bash

var1=god

echo ----

# << 会保留原样
cat <<DOC
	12 var1 $var1
	23 "$var1" '$var1'
		44 \\ \$ \`
	12
DOC

echo ----

# <<- 所有开头的缩进会被trim
cat <<-DOC
	12 var1 $var1
	23 "$var1" '$var1'
		44 \\ \$ \`
	12
DOC

echo ----
