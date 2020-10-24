@echo off
set T_FILENAME="TR_Rendering Ranger R2 (Japan) (En).sfc"
set S_FILENAME="Rendering Ranger R2 (Japan) (En).sfc"
set SCRIPTNAME="renderingrangerr2sfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
