@echo off
for /r %%i in (1-input\*) do ( 
IF "%%~xi" == ".vpp_xbox2" ( 
echo Unpacking %%~ni
call extra\gibbed\Gibbed.RedFaction3.UnpackVPP.exe 1-input\%%~nxi 2-workspace\VPP\%%~ni 
move %%~dpi\%%~nxi 1-input\backup\ ) ELSE (
IF "%%~xi" == ".peg_xbox2" ( 
echo Unpacking %%~ni
call extra\gibbed\pegconvert.exe 1-input\%%~nxi 2-workspace\PEG\%%~ni 
move %%~dpi\%%~nxi 1-input\backup\PEG\) ELSE echo "Skipped unsupported file: %%~nxi" ) ) 

)
echo Unpacking finished!
