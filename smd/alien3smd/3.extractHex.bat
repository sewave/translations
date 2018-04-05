@echo off
set T_FILENAME="TR_Alien 3 (UE) (REV01) [!].gen"
set SCRIPTNAME="alien3smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
