@echo off
set T_FILENAME="TR_Pooyan (J).nes"
set S_FILENAME="Pooyan (J).nes"
set SCRIPTNAME="pooyannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
