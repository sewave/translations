@echo off
set T_FILENAME="TR_Kung-Fu Master (U).gb"
set SCRIPTNAME="kungfumastergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F5B0:30
pause
