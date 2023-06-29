#!/bin/sh
#Define a functions
function_one() {
        echo "Hello world!"
        function_two
}
function_two() {
        echo "Hello Devops!"
}
function_one
