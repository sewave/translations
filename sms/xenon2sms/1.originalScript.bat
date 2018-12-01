@echo off
set T_FILENAME="Xenon 2 (E) (Image Works) [!].sms"
set SCRIPTNAME="xenon2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
