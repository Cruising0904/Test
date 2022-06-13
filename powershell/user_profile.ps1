# theme
#Import-Module posh-git
#Import-Module oh-my-posh
#Set-PoshPrompt Paradox

# Load prompt config
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'custom.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'
# Icons
Import-Module -Name Terminal-Icons

# Utilities
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
  }
#######custom config###################
# inputting local to move local folder

# equivalent of which
# set-Alias -Name which -Value Get-Command
set-Alias -Name v -Value nvim
function local{
	Set-Location ~/AppData/Local
}

function  work{
    Set-Location d:/workspace
  }

function p {
	Set-Location ..
}
function q {
	Set-Location ..
}

function power {
	nvim $profile
}
function vimrc {
  cd $home\appdata\local\nvim\
  nvim .
}
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias sena 'D:\SevenKnights2KR\SevenKnights2KR.exe'


Set-Alias lvim C:\Users\cucrn\.local\bin\lvim.ps1
