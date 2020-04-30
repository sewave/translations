@echo off
set T_FILENAME="TR_Goal! (U) [!].gb"
set SCRIPTNAME="goalgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10E51:20,10F51:20,10AF1:10,13E51:20,13F51:20,14101:200,143E1:20
pause
