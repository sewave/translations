@echo off
set T_FILENAME="Snow Bros. - Nick & Tom (Japan).md"
set SCRIPTNAME="snowbrosnicktomsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
