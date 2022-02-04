# shows navigable menu of all options when hitting tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# autosuggestion
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -Colors @{ InlinePrediction = '#7F969B'}

# aliases
function .. { cd .. }
function ... { cd ../.. }
function .... { cd ../../.. }
function ~ { cd ~ }
Set-Alias -Name g -Value git
function gs { git status }
function gc { git commit -m }
function gca { git commit -a -m }
function gf { git fetch }
function glo { git log --oneline }
function wttr { curl v2.wttr.in }
function vim { . 'C:\Program Files (x86)\Vim\vim82\vim.exe' }
function pwsh { . 'C:\Program Files\PowerShell\7\pwsh.exe'}
function firefox { . 'C:\Program Files\Mozilla Firefox\firefox.exe' }
function chrome { . 'C:\Program Files\Google\Chrome\Application\chrome.exe' }

# starship prompt
Invoke-Expression (&starship init powershell)