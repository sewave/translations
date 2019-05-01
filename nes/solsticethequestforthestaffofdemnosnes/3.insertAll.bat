@echo off
set T_FILENAME="TR_Solstice - The Quest for the Staff of Demnos (U) [!].nes"
set S_FILENAME="Solstice - The Quest for the Staff of Demnos (U) [!].nes"
set SCRIPTNAME="solsticethequestforthestaffofdemnosnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
