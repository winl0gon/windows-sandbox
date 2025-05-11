powershell.exe -command "&{Set-ExecutionPolicy RemoteSigned -force}"
powershell.exe -command "Install-PackageProvider -Name NuGet -Force"
powershell.exe -command "Install-Module -Name 7Zip4Powershell -Force"
powershell.exe -command "Start-Process -Wait -FilePath "C:\Users\WDAGUtilityAccount\Desktop\windows-sandbox\packages\7z2409-x64.exe" -ArgumentList "/S" -PassThru"

powershell.exe -command "Copy-Item "C:\Users\WDAGUtilityAccount\Desktop\windows-sandbox\packages\elastic-agent-8.18.1-windows-x86_64.zip" -Destination "C:\Users\WDAGUtilityAccount\Desktop" -recurse -Force"
powershell.exe -command "Expand-7Zip -ArchiveFileName C:\Users\WDAGUtilityAccount\Desktop\elastic-agent-8.18.1-windows-x86_64.zip -TargetPath C:\Users\WDAGUtilityAccount\Desktop"
powershell.exe -command "C:\Users\WDAGUtilityAccount\Desktop\elastic-agent-8.18.1-windows-x86_64\elastic-agent.exe install --url=<ELASTIC URL> --enrollment-token=<TOKEN> -f"

powershell.exe -command "Start-Process -Wait -FilePath "C:\Users\WDAGUtilityAccount\Desktop\windows-sandbox\packages\onionfruit.exe" -ArgumentList "/S" -PassThru"