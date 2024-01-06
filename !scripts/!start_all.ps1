powershell -executionpolicy bypass -File !scripts/main_startup.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File !scripts/hc1.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File !scripts/hc2.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File !scripts/training_startup.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File !scripts/testing_startup.ps1