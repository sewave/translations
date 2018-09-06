@echo off
set T_FILENAME="TR_Son Son (J) [!].nes"
set S_FILENAME="Son Son (J) [!].nes"
set SCRIPTNAME="sonsonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
