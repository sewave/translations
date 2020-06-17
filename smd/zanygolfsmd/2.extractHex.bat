@echo off
set T_FILENAME="TR_Zany Golf (UE) (REV01).bin"
set SCRIPTNAME="zanygolfsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
