@echo off
set T_FILENAME="TR_Theme Park (Europe) (En,Fr,De).sfc"
set SCRIPTNAME="themeparksfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex EE820:20,EE8A0:A0,EEB40:80
pause
