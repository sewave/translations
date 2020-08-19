@echo off
set T_FILENAME="Super Morph (Europe).sfc"
set SCRIPTNAME="supermorphsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
