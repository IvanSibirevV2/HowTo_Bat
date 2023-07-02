start C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoExit -command "git add .;git status;echo !!!;echo AutoCommit_$((Get-Date).DateTime)_$($Env:UserName);echo !!!;git commit -m AutoCommit_$((Get-Date).DateTime)_$($Env:UserName);git log -3;echo git log ......;git push;TIMEOUT /T 5;Exit;"


