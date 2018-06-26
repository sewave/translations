@echo off 
set T_FILENAME="TR_Pink Goes to Hollywood (U) [!].gen"
set SCRIPTNAME="pinkhwsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
