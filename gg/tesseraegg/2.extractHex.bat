@echo off
set T_FILENAME="TR_Tesserae (U) [!].gg"
set SCRIPTNAME="tesseraegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 696B:400,
pause
