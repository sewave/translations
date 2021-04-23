@echo off
set T_FILENAME="TR_Spacegulls-1.0.nes"
set SCRIPTNAME="spacegulls10nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BC87:10,BCE7:40,B5DC:10,8410:20,8450:20,83F0:10,B19B:8,B1A2:8
pause
