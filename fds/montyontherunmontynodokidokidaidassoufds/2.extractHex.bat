@echo off
set T_FILENAME="TR_Monty on the Run - Monty no Doki Doki Dai Dassou (Japan) [b] [T+ENG].fds"
set SCRIPTNAME="montyontherunmontynodokidokidaidassoufds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B2E2:40,1B652:100,29CE:40,1EBC:50,3540:40,68C:10
pause
