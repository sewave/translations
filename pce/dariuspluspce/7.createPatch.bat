@echo off
set T_FILENAME="TR_Darius Plus (J) (SGX).pce"
set S_FILENAME="Darius Plus (J) (SGX).pce"
set SCRIPTNAME="dariuspluspce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
