#Generic
$NetworkConfigPath = Join-Path -Path $PSScriptRoot -ChildPath "..\configs\network.cfg"
$OcapPath = Join-Path -Path $PSScriptRoot -ChildPath "..\servermods\@OCAP"
$ProfilerPath = Join-Path -Path $PSScriptRoot -ChildPath "..\servermods\@ArmaScriptProfiler"
$InterceptPath = Join-Path -Path $PSScriptRoot -ChildPath "..\servermods\@InterceptMinimalDev"
#Specific
$ModpackPath = Join-Path -Path $PSScriptRoot -ChildPath "..\modpacks\special"
$Port = 2302
$ProfilesPath = Join-Path -Path $PSScriptRoot -ChildPath "..\logs_special"
$ConfigPath = Join-Path -Path $PSScriptRoot -ChildPath "..\configs\special.cfg"
$ExePath = Join-Path -Path $PSScriptRoot -ChildPath "..\server_special\arma3serverprofiling_x64.exe"

$Mods = (Get-ChildItem -Path $ModpackPath -Directory -Filter "*@*"  | Select-Object -expand fullname) -join ';'

$Arguments = "-config=$ConfigPath -cfg=$NetworkConfigPath -profiles=$ProfilesPath -port=$Port -name=16aa -hugepages -maxMem=16000 -malloc=mimalloc_v206_LockPages -enableHT -bandwidthAlg=2 -limitFPS=1000 -loadMissionToMemory -servermod=$OcapPath -mod=$Mods"

echo "args:" + $Arguments

Start-Process -FilePath "$ExePath"  -ArgumentList $Arguments