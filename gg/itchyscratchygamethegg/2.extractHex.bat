@echo off
set T_FILENAME="TR_Itchy & Scratchy Game, The (U) [!].gg"
set SCRIPTNAME="itchyscratchygamethegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
