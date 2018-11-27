#put the whole script in a while loop that asks the user if they want to exit

$no = read-host "Do you want to exit? (y/n)" 
while($no -eq "n"){
    

$serverlist = import-csv C:\PowershellWork\serverlist.csv


foreach($server in $serverlist.servers){
    Start-Job -inputobject $server -ScriptBlock{test-connection -ComputerName $input}
    }

get-job | receive-job

$no = read-host "Do you want to exit? (y/n)"

}