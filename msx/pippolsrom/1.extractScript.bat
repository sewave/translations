@echo off
set T_FILENAME="Pippols (1985) (Konami) (J).rom"
set SCRIPTNAME="pippolsrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
