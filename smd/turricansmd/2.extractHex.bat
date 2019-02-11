@echo off
set T_FILENAME="TR_Turrican (U) [c][!].gen"
set SCRIPTNAME="turricansmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
