# Start-Service.ps1
# Run the .NET API application

$apiPath = "C:\DotnetProject\Dotnetapi\PipelineTesting"  # Replace with the actual path to your .NET API application DLL

# Start the .NET API application
Start-Process -FilePath "dotnet" -ArgumentList "$apiPath" -NoNewWindow
