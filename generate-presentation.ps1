$BackupEncoding = [Console]::OutputEncoding
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$dir = (Get-Location).tostring() + "\build"
[System.IO.Directory]::CreateDirectory($dir)

$index = $dir + "\index.html"
inliner index.html | Out-File -FilePath $index

[Console]::OutputEncoding = $BackupEncoding