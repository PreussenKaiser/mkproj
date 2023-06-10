Param(
    [Parameter(Mandatory = $true)]
    [string]$Name)

mkdir $Name
cd $Name
git init
git branch -m main

mkdir src
mkdir tests

New-Item .gitignore
New-Item README.md
Add-Content -Path README.md -Value "# $Name"