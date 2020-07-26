@echo off
set T_FILENAME="TR_Kirby's Star Stacker (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="kirbysstarstackergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
