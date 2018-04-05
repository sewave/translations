@echo off 
set T_FILENAME="Jewel Master (UE) [!].bin"
set SCRIPTNAME="jewelmaster"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
