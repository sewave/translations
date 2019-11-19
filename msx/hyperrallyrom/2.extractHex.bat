@echo off
set T_FILENAME="TR_Hyper Rally (1985) (Konami) (J).rom"
set SCRIPTNAME="hyperrallyrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
