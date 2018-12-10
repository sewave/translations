@echo off 
set T_FILENAME="TR_Ranger-X (U) [!].gen"
set SCRIPTNAME="rangerx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
