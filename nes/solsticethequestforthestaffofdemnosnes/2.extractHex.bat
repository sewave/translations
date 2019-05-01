@echo off
set T_FILENAME="TR_Solstice - The Quest for the Staff of Demnos (U) [!].nes"
set SCRIPTNAME="solsticethequestforthestaffofdemnosnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11D6C:100,132D1:10,11423:50,11523:50,110E3:200
pause
