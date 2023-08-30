$emailregex = "[a-z0-9!#\$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#\$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"

$youremail = "clfksdjpoin@"

if ($youremail -match $emailregex)
{
write-host "correct email"   
}
else
{
write-host "incorrect email" 
}