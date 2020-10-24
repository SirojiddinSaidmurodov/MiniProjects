Function Set-WallPaper($Value){
    Set-ItemProperty -Path HKCU:\Control Panel\Desktop -Name wallpaper -Value $value
}
Function Set-Theme($Value){
    New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value $value -Type Dword -Force
}
Set-WallPaper -value "path to your light wallpaper"
Set-Theme -value 1 #  light theme
for ($i = 0; $i -lt 5; $i++) {
    RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True
}
