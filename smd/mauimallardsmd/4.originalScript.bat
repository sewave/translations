@echo off
set T_FILENAME="Donald in Maui Mallard (E) [!].bin"
set SCRIPTNAME="mauimallardsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
