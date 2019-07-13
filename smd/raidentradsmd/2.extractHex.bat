@echo off
set T_FILENAME="TR_Raiden Trad (JU) [!].bin"
set SCRIPTNAME="raidentradsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
