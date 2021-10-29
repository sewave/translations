@echo off
set T_FILENAME="Mortal Kombat (World) (v1.1).md"
set SCRIPTNAME="mortalkombatsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
