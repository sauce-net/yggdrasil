$dcsUrl = "https://www.digitalcombatsimulator.com/upload/iblock/f7a/v1cbg2dgv23koh3pzli3pkuyt3kuwsx7/DCS_World_Server_modular.exe"

Invoke-WebRequest -Uri $dcsUrl -OutFile ".\dcswsm.exe"
.\dcswsm.exe
