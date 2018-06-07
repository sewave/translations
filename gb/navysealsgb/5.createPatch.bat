@echo off
set T_FILENAME="TR_Navy Seals (U) [!].gb"
set S_FILENAME="Navy Seals (U) [!].gb"
set SCRIPTNAME="navysealsgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
