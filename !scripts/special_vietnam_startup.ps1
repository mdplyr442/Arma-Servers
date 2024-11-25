# Generic Paths
$ParentPath = Split-Path -Path $PSScriptRoot -Parent
$MainModpackPath = Join-Path -Path $ParentPath -ChildPath "modpacks\main"
$SpecialModpackPath = Join-Path -Path $ParentPath -ChildPath "modpacks\special"
$NetworkConfigPath = Join-Path -Path $ParentPath -ChildPath "configs\network.cfg"
$OcapPath = Join-Path -Path $ParentPath -ChildPath "servermods\@OCAP"
$ProfilerPath = Join-Path -Path $ParentPath -ChildPath "servermods\@ArmaScriptProfiler"
$InterceptPath = Join-Path -Path $ParentPath -ChildPath "servermods\@InterceptMinimalDev"

# Specific Paths
$Port = 2302
$ProfilesPath = Join-Path -Path $ParentPath -ChildPath "logs_special"
$ConfigPath = Join-Path -Path $ParentPath -ChildPath "configs\special.cfg"
$ExePath = Join-Path -Path $ParentPath -ChildPath "server_special\arma3serverprofiling_x64.exe"

# Combine Mods from Both Modpacks
$MainMods = Get-ChildItem -Path $MainModpackPath -Directory -Filter "*@*" | Select-Object -ExpandProperty FullName
$SpecialMods = Get-ChildItem -Path $SpecialModpackPath -Directory -Filter "*@*" | Select-Object -ExpandProperty FullName

# Use only unique mods (main + any additional in special)
$AllMods = ($MainMods + $SpecialMods | Sort-Object -Unique) -join ';'

# Set Arguments
$Arguments = "-config=$ConfigPath -cfg=$NetworkConfigPath -profiles=$ProfilesPath -port=$Port -name=16aa -filePatching -hugepages -maxMem=16000 -malloc=mimalloc_v206_LockPages -enableHT -bandwidthAlg=2 -limitFPS=1000 -loadMissionToMemory -servermod=$OcapPath -mod=$AllMods"

# Debug Output
echo "args:" + $Arguments

# Start Process
Start-Process -FilePath "$ExePath" -ArgumentList $Arguments
