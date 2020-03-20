#Asks the user for input
do {
Write-Host 'The JSON file will be created in the derectory you run this script in.' -ForegroundColor Yellow
$csvPath = Read-Host -Prompt 'Enter file path to the CSV file [ENTER]'
$jsonFileName = Read-Host -Prompt 'Enter a file name for the JSON file [ENTER]'

#If a CSV path or JSON file name is not entered
if ($csvPath -eq '' -or $jsonFileName -eq '') {
    Write-Host 'Make sure you entered a CSV file path and JSON file name.' -ForegroundColor Red
    $i = $false
}
#If there is user input
else {
    $i = $true
}
} while ($i -eq $false)
   
#Import CSV file
$csv = Import-Csv $csvPath

#Adds localEmpty javaClass and expirationTime values to Array
foreach ($account in $csv) { 
    $account.localEmpty = $false; 
    $account.javaClass = 'com.untangle.uvm.LocalDirectoryUser'; 
    $account.expirationTime = 0; $account.localForever = $true;
    }

#Converts Array to JSON file type
$csv | ConvertTo-Json | Add-Content -Path "$jsonFileName.json"