@echo off
set T_FILENAME="TR_World Championship Soccer II (USA).md"
set SCRIPTNAME="worldchampionshipsocceriismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
