@echo off
set T_FILENAME="TR_Hellfire (USA).md"
set SCRIPTNAME="hellfiresmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3B700:20,3B7C0:20,3B880:80,3BAC0:60,3BBC0:60,367A0:20,368E0:C0,3BA00:60
pause
