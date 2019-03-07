@echo off
set T_FILENAME="Ariel - The Little Mermaid (B).sms"
set SCRIPTNAME="arielthelittlemermaidsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
