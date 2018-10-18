@echo off
set T_FILENAME="TR_Batman - Return of the Joker (U) [!].gb"
set SCRIPTNAME="batmanreturnofthejokergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 19784:10
pause
