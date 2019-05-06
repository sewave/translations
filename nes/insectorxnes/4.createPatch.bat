@echo off
set T_FILENAME="TR_Insector X (J).nes"
set S_FILENAME="Insector X (J).nes"
set SCRIPTNAME="insectorxnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
