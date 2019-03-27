@echo off
set T_FILENAME="TR_Joust (U) [!].nes"
set SCRIPTNAME="joustnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7BC0:10,6F90:80,53C0:50,54C0:50,55C0:50,56C0:50,5EB0:60
pause
