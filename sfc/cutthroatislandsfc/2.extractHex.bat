@echo off
set T_FILENAME="TR_Cutthroat Island (U) [!].smc"
set SCRIPTNAME="cutthroatislandsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 165080:200,1B6520:420
pause
