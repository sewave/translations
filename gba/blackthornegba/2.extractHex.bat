@echo off
set T_FILENAME="TR_Blackthorne (USA).gba"
set SCRIPTNAME="blackthornegba"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D56A8:C0,D58E8:60,3DE978:40,3DE638:C0,3DE7D8:20,3DE5D8:20,D60E8:60,D5EA8:C0
pause
