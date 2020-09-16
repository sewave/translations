@echo off
set T_FILENAME="TR_Spider-Man (USA, Europe) (Acclaim).md"
set SCRIPTNAME="spidermansmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
