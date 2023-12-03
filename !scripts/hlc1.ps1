# Get secrets from file in key-value pairs
$secretsFilePath = Join-Path -Path $PSScriptRoot -ChildPath "secrets.txt"
$secrets = @{}
Get-Content -Path $secretsFilePath | ForEach-Object {
    # Split each line into key and value
    $key, $value = $_ -split '=', 2
    # Store the key-value pair in the hashtable
    $secrets[$key] = $value
}

$joinPassword = $secrets["ARMA_CONNECT_PASSWORD"]
$mods = (Get-ChildItem -Path F:\16AA\modpacks\main -Directory -Filter "*@*"  | Select-Object -expand fullname) -join ';'

$arguments = "-client -connect=127.0.0.1 -port=2302 -password=$joinPassword -profiles=F:\16AA\logs_main_hc\hc1 -malloc=mimalloc_v206_LockPages -hugepages -maxMem=16000 -limitFPS=500 -enableHT -mod=$mods"

echo "args:" + $arguments

Start-Process -FilePath "F:\16AA\server_main_hc\arma3server_x64.exe" -ArgumentList $arguments