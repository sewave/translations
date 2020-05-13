@echo off
set T_FILENAME="Indiana Jones and the Temple of Doom (U) (PRG1) [!].nes"
set SCRIPTNAME="indianajonesandthetempleofdoomnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
