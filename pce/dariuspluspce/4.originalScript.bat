@echo off
set T_FILENAME="Darius Plus (J) (SGX).pce"
set SCRIPTNAME="dariuspluspce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
