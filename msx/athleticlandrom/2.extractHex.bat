@echo off
set T_FILENAME="TR_Athletic Land (1984) (Konami) (J).rom"
set SCRIPTNAME="athleticlandrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A06:48
pause
