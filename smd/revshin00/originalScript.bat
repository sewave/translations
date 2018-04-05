@echo off 
set T_FILENAME="Revenge of Shinobi, The (W) (REV00) [!].gen"
set SCRIPTNAME="revshin00"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
