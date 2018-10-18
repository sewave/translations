@echo off
set T_FILENAME="TR_ECCO The Dolphin (UE) [!].gen"
set SCRIPTNAME="eccosmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
