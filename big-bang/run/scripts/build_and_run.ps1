param([string]$ProjectRoot)
Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
cd "$ProjectRoot\src\Web"
dotnet restore
dotnet build -c Release
dotnet run -c Release
