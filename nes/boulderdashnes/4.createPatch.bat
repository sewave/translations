@echo off
set T_FILENAME="TR_Boulder Dash (U) [!].nes"
set S_FILENAME="Boulder Dash (U) [!].nes"
set SCRIPTNAME="boulderdashnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
