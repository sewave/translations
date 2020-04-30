@echo off
set T_FILENAME="TR_Battle Unit Zeoth (U) [!].gb"
set SCRIPTNAME="battleunitzeothgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F300:100
pause
