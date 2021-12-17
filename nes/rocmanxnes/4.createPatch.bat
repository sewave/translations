@echo off
set T_FILENAME="TR_Rocman X (Asia) (Unl).nes"
set S_FILENAME="Rocman X (Asia) (Unl).nes"
set SCRIPTNAME="rocmanxnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
