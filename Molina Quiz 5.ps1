#ask a user to input a number, and using if statements, 
#tell the user if it is higher or lower than a number you pick out

[int]$numberpick = read-host "pick a number"
if($numberpick -le 19){
    write-host "Your number is smaller than mine"
    }
if($numberpick -ge 21){
    write-host "Your number is larger than mine."
    }

#Using Get-Process get only the StartTime property and store it in a variable

$starttime = get-process | select-object starttime

#Using a loop print each line of the variable you stored the start times in, 
#and have it print the start time each time the loop runs and a message 
#telling the user what it is outputting.


foreach($time in $starttime){
    $processname = get-process | select-object processname
    }
foreach($name in $processname){
    $processname = get-process | select-object processname
    write-host "$time is the start time of $name."
    }

#Using git make a local copy of this repository https://github.com/PowerShell/PowerShell

git clone https://github.com/PowerShell/PowerShell
