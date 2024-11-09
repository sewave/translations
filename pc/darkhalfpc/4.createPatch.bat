@echo off

ECHO COPYING FONT FILE...
del ".\patches\BIT5X7.GFT"
copy ".\target\BIT5X7.GFT" ".\patches\BIT5X7.GFT"

ECHO CREATING TEXT FILES PATCHES...

CALL :createPatch "DH.EXE","DH.ips"
CALL :createPatch "HOTSPOT.TXT","HOTSPOT.ips"
CALL :createPatch "ARREST.TXT","ARREST.ips"
CALL :createPatch "RESPONSE.TXT","RESPONSE.ips"
CALL :createPatch "INTERR.TXT","INTERR.ips"
CALL :createPatch "MISC2.TXT","MISC2.ips"
CALL :createPatch "MISC.TXT","MISC.ips"

ECHO CREATING RESOURCE FILES PATCHES...

CALL :createGXLPatch "KEA00"
CALL :createGXLPatch "KEA01"
CALL :createGXLPatch "KFA00"
CALL :createGXLPatch "KOA04"
CALL :createGXLPatch "KRA01"
CALL :createGXLPatch "KRA10"
CALL :createGXLPatch "KRA15"
CALL :createGXLPatch "KUA00"
CALL :createGXLPatch "KUA03"
CALL :createGXLPatch "KUA04"

pause
EXIT /B 0

:createGXLPatch
ECHO CREATING BPS PATCH FOR %~1.GXL...
flips -c -b "./source/%~1.GXL" "./target/%~1.GXL" "./patches/%~1.bps"
EXIT /B 0

:createPatch
java -jar Hextractor.jar -cip "./source/%~1" "./target/%~1" "./patches/v1/%~2"
java -jar Hextractor.jar -cip "./source2/%~1" "./target/%~1" "./patches/v2/%~2"
EXIT /B 0
