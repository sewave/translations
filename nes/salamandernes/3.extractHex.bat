@echo off
set T_FILENAME="TR_Salamander (J) [!].nes"
set SCRIPTNAME="salamandernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4EF5:30
pause
