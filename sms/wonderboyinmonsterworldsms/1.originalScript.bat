@echo off
set T_FILENAME="Wonder Boy in Monster World (E) [!].sms"
set SCRIPTNAME="wonderboyinmonsterworldsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.ext %SCRIPTNAME%Title.off
pause
