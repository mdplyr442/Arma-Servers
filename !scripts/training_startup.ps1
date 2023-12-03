$mods = (Get-ChildItem -Path F:\16AA\modpacks\main -Directory -Filter "*@*"  | Select-Object -expand fullname) -join ';'

$arguments = "-config=F:\16AA\configs\training.cfg -cfg=F:\16AA\configs\network.cfg -profiles=F:\16AA\logs_training -port=2402 -name=16aa -hugepages -maxMem=16000 -malloc=mimalloc_v206_LockPages -enableHT -bandwidthAlg=2 -limitFPS=1000 -loadMissionToMemory -servermod=F:\16AA\OCAP\@ocap_fixugl_01b -mod=$mods"

echo "args:" + $arguments

Start-Process -FilePath "F:\16AA\server_training\arma3serverprofiling_x64.exe"  -ArgumentList $arguments