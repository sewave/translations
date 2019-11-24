@echo off
set T_FILENAME="TR_Seiken Acho (1985) (Ascii) (J).rom"
set SCRIPTNAME="seikenachorom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4997:8,49DF:20,6754:100
pause
