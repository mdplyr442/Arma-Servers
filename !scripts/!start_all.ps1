powershell -executionpolicy bypass -File main_startup.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File hlc1.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File hlc2.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File training_startup.ps1
Start-Sleep -Seconds 5
powershell -executionpolicy bypass -File testing_startup.ps1