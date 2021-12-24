@echo off
set T_FILENAME="Warriors of Might and Magic (USA) (En,Fr,De).gbc"
set SCRIPTNAME="warriorsofmightandmagicgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
