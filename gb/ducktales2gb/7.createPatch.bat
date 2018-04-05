@echo off
set T_FILENAME="TR_Duck Tales 2 (U) [!].gb"
set S_FILENAME="Duck Tales 2 (U) [!].gb"
set SCRIPTNAME="ducktales2gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
