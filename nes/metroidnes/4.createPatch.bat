@echo off
set T_FILENAME="TR_Metroid (USA).nes"
set S_FILENAME="Metroid (USA).nes"
set SCRIPTNAME="metroidnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
