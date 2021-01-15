@echo off
set T_FILENAME="TR_Attack Animal Gakuen (Japan).nes"
set SCRIPTNAME="attackanimalgakuennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
