$cUser = ('C:\'+$env:HOMEPATH+'\Desktop\Reddit-Post-Bot')
$NewVersion = ((Invoke-WebRequest -uri 'https://raw.githubusercontent.com/Shall0e/Reddit-Post-Bot/main/Source/Settings.json').content | convertfrom-json).version
$Settings_rawJSON = (Get-Content -path ($cUser+'\Settings.json') | ConvertFrom-Json)
$Settings_version = $Settings_rawJSON.'version'

echo ((Invoke-WebRequest -uri 'https://raw.githubusercontent.com/Shall0e/Reddit-Post-Bot/main/Source/Settings.json').content) > ($cUser+'\Settings.json')
echo (Invoke-WebRequest -uri 'https://raw.githubusercontent.com/Shall0e/Reddit-Post-Bot/main/Source/READ_THIS').content > ($cUser+'\READ_BEFORE_USING.txt')

if ($NewVersion -notmatch $Settings_version) {echo (Invoke-WebRequest -uri 'https://raw.githubusercontent.com/Shall0e/Reddit-Post-Bot/main/run').content > ($PSCommandPath)}
start $cUser
exit
