@echo off
set T_FILENAME="TR_Hudson Hawk (U) [!].nes"
set S_FILENAME="Hudson Hawk (U) [!].nes"
set SCRIPTNAME="hudsonhawknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
