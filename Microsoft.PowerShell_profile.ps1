# shows navigable menu of all options when hitting tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# autosuggestion
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -Colors @{InlinePrediction = '#7F969B'}

# aliases
function .. { cd .. }
function ... { cd ../.. }
function .... { cd ../../.. }
function ~ { cd ~ }
function gs { git status }
function gf { git fetch }
function glo { git log --oneline }
function gca { git commit -a }
function gcf { git commit -m "fixup" }
function gcaf { git commit -a -m "fixup" }
function gri2 { git rebase -i HEAD~2 }
function wttr { curl v2.wttr.in/75082 }
function wttr-moon { curl www.wttr.in/moon }
function pwsh { . 'C:\Program Files\PowerShell\7\pwsh.exe'}
function firefox { . 'C:\Program Files\Mozilla Firefox\firefox.exe' }
function chrome { . 'C:\Program Files\Google\Chrome\Application\chrome.exe' }
function gx { . 'C:\Users\cdapprich\AppData\Local\Programs\Opera GX\launcher.exe' }

# starship prompt
Invoke-Expression (&starship init powershell)