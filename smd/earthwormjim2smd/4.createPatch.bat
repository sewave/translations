@echo off
set T_FILENAME="TR_Earthworm Jim 2 (USA).md"
set S_FILENAME="Earthworm Jim 2 (USA).md"
set SCRIPTNAME="earthwormjim2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
