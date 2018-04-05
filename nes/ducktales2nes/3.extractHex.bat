@echo off
set T_FILENAME="TR_Duck Tales 2 (U) [!].nes"
set SCRIPTNAME="ducktales2nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex EABB:60,EB99:20,EB59:20
pause
