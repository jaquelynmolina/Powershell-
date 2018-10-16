#user inputs a name and path for fileserver folder
#ask if user is sure, then run script

$askfilename = read-host "Enter file name"
$askfilepath = read-host "Enter file path"
$answer = read-host "Are you sure you want to make this decision?"

if($answer -eq "yes"){
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
    write-host "Good choice. Try again."
    }

#use a foreach loop on the given variable and have the loop multiply each number
#by a number the user enters

$num = 5,50,50,3,1
$asknumber = read-host "What number would you like to use as a multiplier?"

foreach ($number in $num){
    $math = $asknumber * $number 
    write-host $math
    }

#import and use a foreach loop to run test-connection on each server in serverlist.csv

$serverlist = import-csv C:\serverlist.csv   
 
foreach($server in $serverlist){
    test-connection 