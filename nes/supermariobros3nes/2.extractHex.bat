@echo off
set T_FILENAME="TR_Super Mario Bros. 3 (USA) (Rev A).nes"
set SCRIPTNAME="supermariobros3nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5E0B0:20,5E1B0:40,5E7D0:10,57710:40,4C9D0-4CAD0,4CBF0:20,48290:40,45D90:10,45FE0:10,57810-57F10,45F20:20,456B0:20,5C6B0:20,5CEB0:20,5D6B0:20,57790:20,41650:40,41710:40,41F30:10,41FF0:10,46F10:100,45D10:40,41220:10,41300:10,41890:40,41990:40,41B90:40,4F220:10,4F300:10,4CAB0:40
pause
