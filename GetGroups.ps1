# $token = "~~Token~~" 
 
 $Headers = @{ 
 "Accept" = "*/*" 
# "Authorization" = "Bearer "+$token 
 "accept-encoding" = "gzip" 
 "content-type"="application/json" 
 "content-length" = "2" 
 "groupName" = "DfS Tracking Site Owners"
 } 
 
#import Group ID's that need evaluated. 
# $groups = import-csv C:\Data\GetGroupAdmins\Groups.csv 
# $groups = $groups.id 
 
#loop through all Group ID's 
# foreach ($group in $groups){ 
 
 $uri = "http://teams.george.westinghousenuclear.com/team/SP1959/_vti_bin/UserGroup.asmx?op=GetUserCollectionFromGroup" 
 
 $ExportedFile = "C:\Data\GetGroupAdmins\result.xml" 
 
Write-Host $uri 
 
(Invoke-WebRequest -Uri $uri -Method Get -Headers $Headers -passthru -outfile $ExportedFile).content  
 

