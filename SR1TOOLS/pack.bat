@echo off

for /d /r %%i in (2-workspace\VPP\*) do ( 

( echo Packing %%~ni.vpp_xbox2 )
( call extra\gibbed\Gibbed.RedFaction3.PackVPP.exe -b -c ..\packfiles\%%~ni.vpp_xbox2 %%~dpi%%~ni)

)

echo Packing finished!
