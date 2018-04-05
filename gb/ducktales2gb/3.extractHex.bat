@echo off
set T_FILENAME="TR_Duck Tales 2 (U) [!].gb"
set SCRIPTNAME="ducktales2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
