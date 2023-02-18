Get-Process | Sort-Object CPU -Descending
Get-Process | Sort-Object ID -Descending
Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5
Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten/"
for ($i = 1; $i -le 10; $i++) {
    Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten/"
}
Get-Process iexplore | Stop-Process
Get-Process msedge | Select-Object -property ID | Stop-Process