@echo off
set T_FILENAME="TR_Werewolf - The Last Warrior (USA).nes"
set SCRIPTNAME="werewolfthelastwarriornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 278D0:30,27AC0:10,27AF0:10,27B90:10,2DA60:80,37990:80,20390:40,20490:40,33C30:60,34770:30,37130:80,3FDB0:40
pause
