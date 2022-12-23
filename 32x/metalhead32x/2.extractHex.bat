@echo off
set T_FILENAME="TR_Metal Head (Japan, USA) (En,Ja).32x"
set SCRIPTNAME="metalhead32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
