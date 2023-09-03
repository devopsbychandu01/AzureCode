### Windows ###

## Go to URL https://developer.hashicorp.com/terraform/downloads and click Windows Operating system. And then download the  AMD 64 Zip File

## extract the zip file you will get the terraform.exe file.

## The terraform.exe file contains the terraform application.

## The downloaded file should be kept under the environment variable of system.

## Go to "edit system environment variables" from the windows and click on environment variables.

## then under "system variables", click on path option. You will get new window, there add your path of the terraform file

## Then type follwing command to get confirmation of terraform installations
terraform version




### MacOS ###
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
## or install using binary files  ##



### Linux (Ubuntu) ###
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
## Then type follwing command to get confirmation of terraform installations
terraform version


#### VS extention ####
## Go to extentions and install "terraform" and "azure terraform" extentions