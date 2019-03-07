@echo off
set T_FILENAME="TR_Chack 'n Pop (J).nes"
set S_FILENAME="Chack 'n Pop (J).nes"
set SCRIPTNAME="chacknpopnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
