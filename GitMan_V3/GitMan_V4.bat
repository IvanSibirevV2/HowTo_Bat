start C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoExit -command "git add .;git status;echo 0!!!;git commit -m AutoCommit_$((Get-Date).DateTime)_$($Env:UserName);echo 1!!!;git log -3;echo git_log_......;git push;TIMEOUT /T 5;Exit;"


