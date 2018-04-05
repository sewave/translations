set T_FILENAME="Bucky O'Hare (U) [!].nes"
set SCRIPTNAME="bucky"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause