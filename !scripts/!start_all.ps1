powershell -executionpolicy bypass -File main_startup.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File hc1.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File hc2.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File training_startup.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File testing_startup.ps1