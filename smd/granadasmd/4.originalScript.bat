@echo off
set T_FILENAME="Granada (JU) (REV01) [!].gen"
set SCRIPTNAME="granadasmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
