@echo off
set T_FILENAME="TR_Demon Sword (U) [!].nes"
set SCRIPTNAME="demonswordnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21E10:10,391E0:30,39510:30,23E60:80
pause
