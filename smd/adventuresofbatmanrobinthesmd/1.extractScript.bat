@echo off
set T_FILENAME="Adventures of Batman & Robin, The (USA).md"
set SCRIPTNAME="adventuresofbatmanrobinthesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
