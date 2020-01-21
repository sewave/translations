@echo off
set T_FILENAME="TR_Bugs Bunny (U) [!].gb"
set SCRIPTNAME="bugsbunnygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AEB0:10,B850:10,BBE0:10,BD10:10,BD80:30
pause
