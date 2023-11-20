$emailregex = "[a-z0-9!#\$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#\$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"

$youremail = "abcd@gmail.com"

if ($youremail -match $emailregex)
{
write-host "correct email"   
}
else
{
write-host "incorrect email" 
}