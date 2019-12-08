@echo off
set T_FILENAME="TR_Doki Doki Penguin Land (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="dokidokipenguinlandrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5FF7:100
pause
