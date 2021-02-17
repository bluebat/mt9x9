#!/usr/bin/pwsh
<#
9x9 multiplication table in PowerShell
CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
#>
# ./mt9x9.ps1 || pwsh mt9x9.ps1

For ($i = 1; $i -lt 10; $i += 3) {
    ForEach ($j in 1..9) {
        ForEach ($k in $i, ($i+1), ($i+2)) {
            Write-Host -NoNewline ("{0}x{1}={2,2}`t" -f $k, $j, ($k*$j))
        }
        Write-Host
    }
    ""
}
