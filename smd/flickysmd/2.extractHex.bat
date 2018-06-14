@echo off
set T_FILENAME="TR_Flicky (UE) [!].gen"
set SCRIPTNAME="flickysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2572:60
pause
