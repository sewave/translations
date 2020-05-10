@echo off
set T_FILENAME="TR_Milon's Secret Castle (U) [!].gb"
set SCRIPTNAME="milonssecretcastlegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
