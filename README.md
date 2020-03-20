# UntangleCSV-JSON
XLSX and PowerShell script for creating CSV files and converting them to a JSON to import into the Untangle Local Directory

## UntangleCSVcreator
In the UntangleCSVcreator.xlsx file, red columns are required fields and yellow fields will be written over by the PowerShell script.UntangleNG will populate all other fields when the JSON is imported into the Local Directory
- ![#f03c15](https://placehold.it/15/f03c15/000000?text=+) `Required`
- ![#f0de15](https://placehold.it/15/f0de15/000000?text=+) `Written over`

## CSVtoUntangleJSONconverter
As always, to run a PS1 in PowerShell Execution Policies need to be changed to Unrestricted. You can do this by running `Set-ExecutionPolicy Unrestricted` in an Administrative PowerShell instance. You can always copy and paste the code into a Powershell Prompt and press enter if you do not want to change your Execution Policy.
