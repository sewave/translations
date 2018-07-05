@echo off
set T_FILENAME="TR_Battle Squadron (UE) [!].bin"
set SCRIPTNAME="battlesquadronsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
