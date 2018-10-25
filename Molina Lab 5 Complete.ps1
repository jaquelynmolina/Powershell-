#user inputs a name and path for fileserver folder
#ask if user is sure, then run script

function FOLDERSANDMESSAGES{
write-host "You will create folders and welcome messages."

$askfilename = read-host "Enter file name"
$askfilepath = read-host "Enter file path"
$answer = read-host "Are you sure you want to make this decision? (y/n)"

if($answer -eq "y"){
    new-item -type directory -name $askfilename -path $askfilepath 
    $csv = Import-Csv C:\employeelist.csv
    

    foreach ($name in $csv){
        new-item -type directory -path $askfilepath -name $name.Name.replace(' ', '').tolower()
        }

    foreach ($thing in get-childitem C:\fileserver){
       new-item -name hello.txt -value "welcome message" -path C:\fileserver\$thing
        }        
}
else {
    write-host "Go directly to jail. Do not pass go. Do not collect 200 dollars."
    }
    }

#use a foreach loop on the given variable and have the loop multiply each number
#by a number the user enters

write-host "Next, you will choose a number."

$num = 5,50,50,3,1
[int]$asknumber = read-host "Pick a number"

foreach ($number in $num){
    $math = $asknumber * $number 
    write-host $math
    }

#import and use a foreach loop to run test-connection on each server in serverlist.csv

write-host "You are about to test server connectivity."

$serverlist = import-csv C:\serverlist.csv   
 
foreach($server in $serverlist){
    test-connection $server.servers
    }
