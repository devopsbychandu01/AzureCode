#check the execution policy
get-executionPolicy

## check the execution policy for a specific scope
get-executionPolicy -Scope CurrentUser
get-executionPolicy -Scope Process
get-executionPolicy -Scope LocalMachine

## set execution policy
Set-ExecutionPolicy Unrestricted

## set for a specific scope
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
Set-ExecutionPolicy Unrestricted -Scope LocalMachine