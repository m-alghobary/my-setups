Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Set-PoshPrompt -Theme ~/mytheme.omp.json
oh-my-posh --init --shell pwsh --config C:\Users\malgh\OneDrive\Documents\PowerShell\shell_theme.json | Invoke-Expression

function StartPWPAPI {
	clear
	C:\xampp\xampp-control.exe
	cd .\venus\pwp-api
	code .
	php artisan serve
}


function StartPWPUI {
	clear
	cd .\venus\pwp-ui
	code .
	yarn serve
}

New-Alias pwp-api StartPWPAPI
New-Alias pwp-ui StartPWPUI
