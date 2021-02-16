@echo off
set T_FILENAME="TR_Ultracore (Japan) (En).md"
set SCRIPTNAME="ultracoresmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
