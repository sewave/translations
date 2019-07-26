@echo off
set T_FILENAME="TR_Bubba N Stix (U) [!].bin"
set SCRIPTNAME="bubbanstixsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
