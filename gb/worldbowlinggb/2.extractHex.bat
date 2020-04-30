@echo off
set T_FILENAME="TR_World Bowling (U) [!].gb"
set SCRIPTNAME="worldbowlinggb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 31BB:100,181B:240,D8B:50,136B:10,15CB:40,
pause
