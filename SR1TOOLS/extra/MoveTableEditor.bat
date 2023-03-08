@echo off


for /r %%i in (table_file_editor\*) do (
echo Files found, sending to branch
goto :moveto_misc
)
echo Files NOT found in origin
goto :moveto_origin



:moveto_origin
echo Moving files back to their origin.
move ..\2-workspace\VPP\misc\table_file_editor.exe table_file_editor\
move ..\2-workspace\VPP\misc\vColorPicker.dll table_file_editor\
move ..\2-workspace\VPP\misc\vxml.dll table_file_editor\
goto :eof

:moveto_misc
echo Moving files to misc. %%~i
for /r %%i in (table_file_editor\*) do ( 
move %%i ..\2-workspace\VPP\misc
 )

