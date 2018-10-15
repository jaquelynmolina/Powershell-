new-item -type directory -name fileserver -path C:\ 
$csv = Import-Csv C:\employeelist.csv

foreach ($name in $csv){
    new-item -type directory -path C:\fileserver -name $name.Name.replace(' ', '').tolower()
    }

foreach ($thing in get-childitem C:\fileserver){
    new-item -name hello.txt -value "welcome message" -path C:\fileserver\$thing
    }