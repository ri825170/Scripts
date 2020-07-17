# Get-ChildItem -Filter *.csv | Select-Object -ExpandProperty FullName | Import-Csv | 

#$t=Read-Host "Inserire parola > "
$a=Import-csv -encoding default "testcsv1.csv" #importa file
$a=Import-csv -encoding default "testcsv2.csv"
$a+=,@() #non lo so
$a=$a|select col1,col2,col3 #prende il nome delle colonne e lo usa come riferimento
$a[$a.length-1].col1=$t # aggiunge una valore in una specifica cella (intersezione tra ultima linea e colonna)- appende alla fine
$a[$a.length-1].col2=$t
$a[$a.length-1].col3=$t
$a|export-csv testcsv1.csv #scrive nel csv






# Export-Csv .\combinedcsvs.csv -NoTypeInformation -Append
#Write-Host $a
#Write-Host $b


#$a=import-csv team.csv   
#$a+=,@()
#$a=$a|select NAME,TEAM,HEIGHT,WEIGHT,AGE
#$a[$a.length-1].team="Williams"  
#$a|export-csv team2.csv
