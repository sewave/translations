@echo off 
set T_FILENAME="Decap Attack (UE) [!].gen"
set SCRIPTNAME="decapatk"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
