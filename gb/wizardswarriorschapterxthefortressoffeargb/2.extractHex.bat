@echo off
set T_FILENAME="TR_Wizards & Warriors Chapter X - The Fortress of Fear (E) [!].gb"
set SCRIPTNAME="wizardswarriorschapterxthefortressoffeargb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 42C9:8,8001:8,8079:8,8129:8,8159:8
pause
