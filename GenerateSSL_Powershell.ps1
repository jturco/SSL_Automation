
#Variables:
$Domain = "outagemap.cmpco.com"


#Global
$Country = "US"
$State = "CA"
$City = "Redlands"
$Org = "Esri"
$OrgUnit = "Professional Services"
$Email = "MS_TEAM_ADMINS@esri.com"

$Subject = ("/C="+$Country+"/ST="+$State+"/L="+$City+"/O="+$Org+"/OU="+$OrgUnit+"/CN="+$Domain)

$rsakey = ("/Certs/"+$Domain+".key")
$csr = ("/Certs/"+$Domain+".csr")
 

C:\OpenSSL-Win32\bin\openssl.exe genrsa -out $rsakey 2048

C:\OpenSSL-Win32\bin\openssl.exe req -new -sha256 -key $rsakey -out $csr -subj $Subject

Read-Host -Prompt "Press Enter to exit"

