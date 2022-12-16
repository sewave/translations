@echo off
set T_FILENAME="Jumpman Junior (1984) (Epyx).col"
set SCRIPTNAME="jumpmanjuniorcol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
