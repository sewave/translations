@echo off
set T_FILENAME="Nova Blast (1983) (Imagic) [!].col"
set SCRIPTNAME="novablastcol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
