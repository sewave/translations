@echo off
set T_FILENAME="TR_Ghostbusters (USA).nes"
set S_FILENAME="Ghostbusters (USA).nes"
set SCRIPTNAME="ghostbustersnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
