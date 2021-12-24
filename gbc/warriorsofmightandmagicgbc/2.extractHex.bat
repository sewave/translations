@echo off
set T_FILENAME="TR_Warriors of Might and Magic (USA) (En,Fr,De).gbc"
set SCRIPTNAME="warriorsofmightandmagicgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B286:100
pause
