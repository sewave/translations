@echo off
set T_FILENAME="TR_Syndicate (USA, Europe) (En,Fr,De).md"
set SCRIPTNAME="syndicatesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 76C:20,90C:60,CEC:60,DAC:20,F4C:60,132C:60,13EC:20,158C:60,196C:60,1B0C:20,1CAC:60,208C:60,312C:20,32CC:60,36AC:60,2F4C:180
pause
