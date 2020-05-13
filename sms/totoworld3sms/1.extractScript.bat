@echo off
set T_FILENAME="Toto World 3 (K) [!].sms"
set SCRIPTNAME="totoworld3sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
