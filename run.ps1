#672249

cls
$cUser = ('C:\'+$env:HOMEPATH+'\Desktop\Reddit-Post-Bot')
$NewVersion = ((Invoke-WebRequest -uri 'https://raw.githubusercontent.com/Shall0e/Reddit-Post-Bot/main/Source/Settings.json').content | convertfrom-json).version
$Settings_rawJSON = (Get-Content -path ($cUser+'\Settings.json') | ConvertFrom-Json)
$Settings_redditID = $Settings_rawJSON.'reddit-Id'
$Settings_version = $Settings_rawJSON.'version'
$Settings_version
$NewVersion

if ($NewVersion -notmatch $Settings_version) {Invoke-Expression -Command (Invoke-WebRequest -uri 'https://raw.githubusercontent.com/Shall0e/Reddit-Post-Bot/main/update').content}

Function Reddit-Post($sr, $dsafd) {
$body = @{
  sr = $sr
  submit_type = 'subreddit'
  api_type = 'json'
  show_error_list = 'true'
  title = 'fgdfhxcvcxbxcbxcvbczxbgfd'
  spoiler = 'false'
  nsfw = 'false'
  kind = 'self'
  original_content = 'false'
  post_to_twitter = 'false'
  sendreplies = 'true'
  richtext_json = '{"document":[{"e":"text","t":"fgfdgfdgdfgfdgffgdfg"}]}'
  validate_on_submit = 'true'
}
Invoke-WebRequest -UseBasicParsing -Uri "https://oauth.reddit.com/api/submit?resubmit=true&redditWebClient=desktop2x&app=desktop2x-client-production&rtj=only&raw_json=1&gilding_detail=1" `
-Method POST `
-UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0" `
-Headers @{
"Accept" = "*/*"
  "Referer" = "https://www.reddit.com/"
  "Origin" = "https://www.reddit.com"
  "Authorization" = "Bearer 1525717936-RBYof0tLymscBKh6UZG4GC3639GC3A"
} `
-ContentType "application/x-www-form-urlencoded" `
-Body $body
}
