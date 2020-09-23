@echo off
set T_FILENAME="TR_Incredible Crash Dummies, The (U) [!].nes"
set SCRIPTNAME="incrediblecrashdummiesthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3DDA0:60,3DBC0:20,3DCC0:20,3DB20:10
pause
