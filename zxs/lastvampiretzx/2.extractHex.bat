@echo off
set T_FILENAME="TR_Last Vampire.tzx"
set SCRIPTNAME="lastvampiretzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 574F:10,5A3F:28,5ADF:8
pause
