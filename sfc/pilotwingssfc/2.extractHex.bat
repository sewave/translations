@echo off
set T_FILENAME="TR_Pilotwings (USA).sfc"
set SCRIPTNAME="pilotwingssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 66D40:60,66F40:60,675C0:40,677C0:40,66400:20,66600:20,664E0:20,666E0:20,66940:20,66B40:20,30500:20,30800:80,308E0:80,47800:120,47A00:120,74800:C0,74A00:C0,749C0:40,74BC0:40,66CC0:20,66EC0:20,
pause
