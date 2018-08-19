@echo off
set T_FILENAME="TR_Back to the Future Part III (U) [!].gen"
set SCRIPTNAME="backtothefuturepartiiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 572A:A0,624A:60
pause
