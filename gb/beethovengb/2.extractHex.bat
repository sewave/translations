@echo off
set T_FILENAME="TR_Beethoven (Europe) (SGB Enhanced).gb"
set SCRIPTNAME="beethovengb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D130:60,E1D0:30,12450:60,1D0A0:60,AD48:200
pause
