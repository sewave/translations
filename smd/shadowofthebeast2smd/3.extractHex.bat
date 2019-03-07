@echo off
set T_FILENAME="TR_Shadow of the Beast 2 (UE) [!].gen"
set SCRIPTNAME="shadowofthebeast2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
