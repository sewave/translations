@echo off
set T_FILENAME="TR_Indiana Jones and the Temple of Doom (U) (PRG1) [!].nes"
set SCRIPTNAME="indianajonesandthetempleofdoomnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 26C90:60,26FC0:40,26DB0:30
pause
