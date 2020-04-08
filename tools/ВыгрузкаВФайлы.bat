set XMLPath=%1
cd /D %XMLPath%
rd %XMLPAth% /s/q 
ring edt workspace export --workspace-location U:\Козинский\EDT2 --project U:\Козинский\EDT2\pb\PB2 --configuration-files %XMLPAth%

