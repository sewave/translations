@echo off 
set T_FILENAME="True Lies (W) [!].gen"
set SCRIPTNAME="trueliessmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.ext %SCRIPTNAME%Title.off 
pause 
