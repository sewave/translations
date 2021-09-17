@echo off
set T_FILENAME="TR_Zombie Nation (USA).nes"
set SCRIPTNAME="zombienationnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3F230:60,3F3D0:40,3B9F0:20,3BAF0:20,3BBF0:20,3CED0:10,3F5F0:10
pause
