@echo off
set T_FILENAME="TR_Cutthroat Island (UE) [!].bin"
set SCRIPTNAME="cutthroatislandsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 55FD2:1000
pause
