cd "D:\Bot's\survival-test"

# --- GitHub ---
git pull origin main
git add prompts.txt
$commitMessage = "update prompts.txt " + (Get-Date -Format "yyyy-MM-dd HH:mm")
git commit -m $commitMessage
git push origin main
Write-Host "✅ prompts.txt оновлено і запушено на GitHub!"

# --- Google Drive ---
$localFile = "D:\Bot's\survival-test\prompts.txt"
$driveFile = "G:\Мой диск\survival-test\prompts.txt"

Copy-Item $localFile $driveFile -Force
Write-Host "✅ prompts.txt скопійовано у Google Drive!"
