@echo off
set T_FILENAME="Montezuma's Revenge (U) [!].sms"
set SCRIPTNAME="montezumasrevengesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
