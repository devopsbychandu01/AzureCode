##this is used for conditional execution##

$myarray=@("chandu","prsad","azhar","raju","mahesh")

foreach ($item in $myarray)
{
    write-host "write the name as $item"
}