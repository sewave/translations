@echo off
set T_FILENAME="TR_Last Battle (UE) [!].bin"
set SCRIPTNAME="lastbattlesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7FCA0:340
pause
