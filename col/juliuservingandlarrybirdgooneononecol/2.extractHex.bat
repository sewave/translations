@echo off
set T_FILENAME="TR_Julius Erving and Larry Bird Go - One-on-One (USA).col"
set SCRIPTNAME="juliuservingandlarrybirdgooneononecol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
