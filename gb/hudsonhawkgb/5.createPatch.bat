@echo off
set T_FILENAME="TR_Hudson Hawk (U) [!].gb"
set S_FILENAME="Hudson Hawk (U) [!].gb"
set SCRIPTNAME="hudsonhawkgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
