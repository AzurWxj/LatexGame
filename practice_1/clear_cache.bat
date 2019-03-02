@echo off
setlocal enableDelayedExpansion
for %%I in (*.*) do (
    set /a res=0
    if "%%~xI" == ".jpg" (
        rem echo ".jpg"
        set /a res+=1 
    )
    if "%%~xI" == ".tex" (
        rem echo ".tex"
        set /a res+=1 
    )
    if "%%I" == "%~nx0" (
        rem echo ".bat"
        set /a res+=1 
    )
    
    if !res! equ 0 del %%I
)

endlocal