@echo off
set T_FILENAME="Excitebike (JU) [!].nes"
set SCRIPTNAME="excitebikenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
