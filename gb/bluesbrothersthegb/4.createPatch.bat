@echo off
set T_FILENAME="TR_Blues Brothers, The (U) [!].gb"
set S_FILENAME="Blues Brothers, The (U) [!].gb"
set SCRIPTNAME="bluesbrothersthegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
