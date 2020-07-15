@echo off
set T_FILENAME="TR_Sky Shark (USA).nes"
set SCRIPTNAME="skysharknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F310:80,2FB10:40
pause
