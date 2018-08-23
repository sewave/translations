@echo off
set T_FILENAME="TR_Double Dragon (U) [!].gen"
set SCRIPTNAME="doubledragonsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
