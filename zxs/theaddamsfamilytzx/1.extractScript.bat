@echo off
set T_FILENAME="The Addams Family (Erbe).tzx"
set SCRIPTNAME="theaddamsfamilytzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
