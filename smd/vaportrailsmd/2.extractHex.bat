@echo off
set T_FILENAME="TR_Vapor Trail (U) [!].bin"
set SCRIPTNAME="vaportrailsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D0400:100,D0580:80,D0900:80
pause
