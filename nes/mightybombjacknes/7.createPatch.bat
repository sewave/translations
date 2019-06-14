@echo off
set T_FILENAME="TR_Mighty Bomb Jack (U) [!].nes"
set S_FILENAME="Mighty Bomb Jack (U) [!].nes"
set SCRIPTNAME="mightybombjacknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
