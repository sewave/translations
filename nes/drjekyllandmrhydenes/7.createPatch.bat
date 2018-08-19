@echo off
set T_FILENAME="TR_Dr. Jekyll and Mr. Hyde (U) [!].nes"
set S_FILENAME="Dr. Jekyll and Mr. Hyde (U) [!].nes"
set SCRIPTNAME="drjekyllandmrhydenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
