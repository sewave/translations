@echo off
set T_FILENAME="TR_Indiana Jones and the Temple of Doom (U) (PRG1) [!].nes"
set S_FILENAME="Indiana Jones and the Temple of Doom (U) (PRG1) [!].nes"
set SCRIPTNAME="indianajonesandthetempleofdoomnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
