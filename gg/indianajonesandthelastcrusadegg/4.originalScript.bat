@echo off
set T_FILENAME="Indiana Jones and the Last Crusade (U).gg"
set SCRIPTNAME="indianajonesandthelastcrusadegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
