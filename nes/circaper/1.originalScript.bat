set T_FILENAME="Circus Caper (U) [!].nes"
set SCRIPTNAME="circaper"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt %SCRIPTNAME%.off 
pause