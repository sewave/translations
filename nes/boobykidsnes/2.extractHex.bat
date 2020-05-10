@echo off
set T_FILENAME="TR_Booby Kids (J) [!].nes"
set SCRIPTNAME="boobykidsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 143C0:50
pause
