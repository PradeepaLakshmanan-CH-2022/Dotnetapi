# install-dotnet-core.ps1
# Install .NET 6 Runtime

$dotnetCoreVersion = "6.0.0"  # Replace with the desired .NET 6 version
$installerUrl = "https://download.visualstudio.microsoft.com/download/pr/xxxxx"  # Replace with the URL to the .NET 6 runtime installer

# Download the .NET 6 runtime installer
Invoke-WebRequest -Uri $installerUrl -OutFile "dotnet-runtime-installer.exe"

# Install the .NET 6 runtime
Start-Process -Wait -FilePath "dotnet-runtime-installer.exe" -ArgumentList "--install --quiet --channel $dotnetCoreVersion"

# Clean up the installer
Remove-Item -Path "dotnet-runtime-installer.exe"
