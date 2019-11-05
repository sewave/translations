@echo off
set T_FILENAME="TR_Corre Benny (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="correbennynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F410-F60F,90C0:B0
pause
