@echo off
set T_FILENAME="TR_Nintendo World Cup (USA).nes"
set S_FILENAME="Nintendo World Cup (USA).nes"
set SCRIPTNAME="nintendoworldcupnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
