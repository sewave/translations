@echo off
set T_FILENAME="TR_Back to the Future Part III (U) [!].gen"
set S_FILENAME="Back to the Future Part III (U) [!].gen"
set SCRIPTNAME="backtothefuturepartiiismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
