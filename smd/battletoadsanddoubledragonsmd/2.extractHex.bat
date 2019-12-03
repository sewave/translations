@echo off
set T_FILENAME="TR_Battletoads and Double Dragon (U) [c][!].bin"
set SCRIPTNAME="battletoadsanddoubledragonsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A3E36:40,A3F96:100,A4116:100,C5B36:20,A6976:300,A3F76:20,9ED16:60,9F0D6:40
pause
