@echo off
set T_FILENAME="TR_BugTris (Korea) (Unl).nes"
set SCRIPTNAME="bugtrisnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8EE0:140,9560:10,94F0:10,94A0:20,9470:10
pause
