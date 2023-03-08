@echo off

for /d /r %%i in (2-workspace\PEG\*) do ( 

( echo Packing %%~ni.peg_xbox2 )
( call extra\gibbed\pegconvert.exe %%~dpi%%~ni 3-output\%%~ni.peg_xbox2 )

)

echo Packing finished!
