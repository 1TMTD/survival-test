cd "D:\Bot's\survival-test"

Write-Host "=== Git Menu ==="
Write-Host "1. Перевірити статус (git status)"
Write-Host "2. Додати prompt.txt (git add)"
Write-Host "3. Commit (git commit)"
Write-Host "4. Push (git push)"
Write-Host "5. Pull (git pull)"
Write-Host "6. Повний цикл (pull + add + commit + push)"
Write-Host "0. Вихід"

$choice = Read-Host "Вибери дію (0-6)"

switch ($choice) {
    "1" { git status }
    "2" { git add prompt.txt }
    "3" { git commit -m "update prompt.txt" }
    "4" { git push origin main }
    "5" { git pull origin main }
    "6" {
        git pull origin main
        git add prompt.txt
        git commit -m "update prompt.txt"
        git push origin main
    }
    "0" { Write-Host "Вихід..." }
    default { Write-Host "❌ Невірний вибір" }
}
