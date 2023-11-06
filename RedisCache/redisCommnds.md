### install ###
sudo apt-get install redis-tools
### connect to Redis ###
redis-cli -h <redisdnsName> -p 6379 -a <primaryKey>

set "key1" "value1"
set "key2" "value2"
set "key3" "value3"
set "key4" "value4"
set "key5" "value5"
set "key6" "value6"
set "key7" "value7"
set "key8" "value8"
set "key9" "value9"
set "key10" "value10"

get key1
get key2

## query for key start with k ##
keys "k*"

## get all keys
keys *