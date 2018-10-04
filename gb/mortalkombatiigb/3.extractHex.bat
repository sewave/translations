@echo off
set T_FILENAME="TR_Mortal Kombat II (U) [!].gb"
set SCRIPTNAME="mortalkombatiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
