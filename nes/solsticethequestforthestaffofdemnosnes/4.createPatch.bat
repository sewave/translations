@echo off
set T_FILENAME="TR_Solstice - The Quest for the Staff of Demnos (U) [!].nes"
set S_FILENAME="Solstice - The Quest for the Staff of Demnos (U) [!].nes"
set SCRIPTNAME="solsticethequestforthestaffofdemnosnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
