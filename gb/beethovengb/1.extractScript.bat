@echo off
set T_FILENAME="Beethoven (Europe) (SGB Enhanced).gb"
set SCRIPTNAME="beethovengb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
