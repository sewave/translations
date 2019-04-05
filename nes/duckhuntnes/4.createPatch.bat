@echo off
set T_FILENAME="TR_Duck Hunt (W) [!].nes"
set S_FILENAME="Duck Hunt (W) [!].nes"
set SCRIPTNAME="duckhuntnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
