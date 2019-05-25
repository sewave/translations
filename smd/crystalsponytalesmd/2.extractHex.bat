@echo off
set T_FILENAME="TR_Crystal's Pony Tale (U) [!].bin"
set SCRIPTNAME="crystalsponytalesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AF200:400,723B4:30,724B4:20,FAFC0:300
pause
