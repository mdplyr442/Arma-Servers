$mods = (Get-ChildItem -Path F:\16AA\modpacks\main -Directory -Filter "*@*"  | Select-Object -expand fullname) -join ';'

$arguments = "-client -connect=127.0.0.1 -port=2302 -password=placeholder -profiles=F:\16AA\logs_main_hc\hc1 -malloc=mimalloc_v206_LockPages -hugepages -maxMem=16000 -limitFPS=500 -enableHT -mod=$mods"

echo "args:" + $arguments

Start-Process -FilePath "F:\16AA\server_main_hc\arma3server_x64.exe" -ArgumentList $arguments