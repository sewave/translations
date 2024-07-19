@echo off
set T_FILENAME="TR_Captain Planet and the Planeteers (USA).nes"
set S_FILENAME="Captain Planet and the Planeteers (USA).nes"
set SCRIPTNAME="captainplanetandtheplaneteersnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
