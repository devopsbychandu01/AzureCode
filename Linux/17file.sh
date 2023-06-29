#!/bin/sh
#define a function
hello() {
	echo "Hello $1 $2"
	return 10
}
# Invoke function
hello Devops Engineers
# capture the value of return which mentioned previously.
ret=$?
echo "Return value is $ret"

