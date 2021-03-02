@echo off
:: 9x9 multiplication table in Batch
:: CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2021.
rem wine cmd /c mt9x9.bat

setlocal enabledelayedexpansion
for /l %%i in (1,3,9) do (
    for /l %%j in (1,1,9) do (
        for /l %%K in (0,1,2) do (
            set /a k=%%i+%%K
            set /a s=!k!*%%j
            <nul set/p"=!k!x%%j="
            if !s! lss 10 (<nul set/p"= ")
            <nul set/p"=!s!	"
        )
        echo.
    )
    echo.
)
endlocal
