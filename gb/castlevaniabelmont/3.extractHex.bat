@echo off
set T_FILENAME="TR_Castlevania II - Belmont's Revenge (U) [!].gb"
set SCRIPTNAME="castlevaniabelmont"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
