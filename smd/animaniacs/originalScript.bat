set T_FILENAME="Animaniacs (U) [!].bin"
set SCRIPTNAME="animaniacs"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause