set T_FILENAME="Circus Caper (U) [!].nes"
set SCRIPTNAME="circaper"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 3646-3B2F-FF,4395-52B6-FF
pause