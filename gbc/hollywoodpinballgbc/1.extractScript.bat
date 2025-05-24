@echo off
set T_FILENAME="Hollywood Pinball (Europe) (En,Fr,De,It) (GB Compatible).gbc"
set SCRIPTNAME="hollywoodpinballgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
