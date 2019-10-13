@echo off
set T_FILENAME="TR_Pinball (JU) [!].nes"
set SCRIPTNAME="pinballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 46C0:40,47B0:10,5EF0:10,5B80:20
pause
