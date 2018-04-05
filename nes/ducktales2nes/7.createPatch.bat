@echo off
set T_FILENAME="TR_Duck Tales 2 (U) [!].nes"
set S_FILENAME="Duck Tales 2 (U) [!].nes"
set SCRIPTNAME="ducktales2nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
