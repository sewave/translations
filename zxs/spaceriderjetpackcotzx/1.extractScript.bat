@echo off
set T_FILENAME="Space Rider Jet Pack Co..tzx"
set SCRIPTNAME="spaceriderjetpackcotzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
