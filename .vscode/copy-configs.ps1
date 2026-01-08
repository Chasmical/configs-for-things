# Copy Espanso config directory
Remove-Item -Path "./espanso" -Recurse
Copy-Item -Path "E:\Programs\Espanso\.espanso" -Destination "./espanso" -Recurse

# Copy Kanata's kanata.kbd config
Remove-Item -Path "./kanata" -Recurse
New-Item -Path "./kanata" -ItemType Directory | Out-Null
Copy-Item -Path "E:\Programs\Kanata\kanata.kbd" -Destination "./kanata/kanata.kbd"

echo "Copied the config files successfully`n"
