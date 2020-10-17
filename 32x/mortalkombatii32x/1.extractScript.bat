@echo off
set T_FILENAME="Mortal Kombat II (32X) (W) (Jan 1995) [!].32x"
set SCRIPTNAME="mortalkombatii32x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
