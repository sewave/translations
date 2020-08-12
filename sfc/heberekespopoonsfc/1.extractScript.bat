@echo off
set T_FILENAME="Hebereke's Popoon (Europe).sfc"
set SCRIPTNAME="heberekespopoonsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
