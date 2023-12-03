$mods = (Get-ChildItem -Path F:\16AA\modpacks\main -Directory -Filter "*@*"  | Select-Object -expand fullname) -join ';'

$arguments = "-config=F:\16AA\configs\main.cfg -cfg=F:\16AA\configs\network.cfg -profiles=F:\16AA\logs_main -port=2302 -name=16aa -hugepages -maxMem=16000 -malloc=mimalloc_v206_LockPages -enableHT -bandwidthAlg=2 -limitFPS=1000 -loadMissionToMemory -servermod=F:\16AA\OCAP\@ocap_fixugl_01b;F:\16AA\profiling_mods\@ArmaScriptProfiler;F:\16AA\profiling_mods\@InterceptMinimalDev -profilerEnableNetwork -profilerEnableEngine -mod=$mods"

echo "args:" + $arguments

Start-Process -FilePath "F:\16AA\server_main\arma3serverprofiling_x64.exe"  -ArgumentList $arguments