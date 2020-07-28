@echo off
set T_FILENAME="Choplifter III (Europe).gb"
set SCRIPTNAME="choplifteriiigb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
