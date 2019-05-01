@echo off
set T_FILENAME="Solstice - The Quest for the Staff of Demnos (U) [!].nes"
set SCRIPTNAME="solsticethequestforthestaffofdemnosnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
