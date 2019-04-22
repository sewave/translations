@echo off
set T_FILENAME="TR_Bugs Bunny Crazy Castle, The (U) [!].nes"
set SCRIPTNAME="bugsbunnycrazycastlethenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11B60:20,12BE0:10,12CE0:10,12010:80,12110:80,12210:80,12310:80
pause
