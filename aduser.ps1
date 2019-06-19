# Import AD Module
Import-Module ActiveDirectory

# Create the AD User
New-ADUser `
    -Name "$firstname $lastname" `
    -GivenName $firstname `
    -Surname $lastname `
    -UserPrincipalName "Abc.Def" `
    -AccountPassword (ConvertTo-SecureString "P@SSw)rd123" -AsplainText -Force) `
    -Path "OU=Users: Legacy,OU=Users,OU=iel-200-idc,OU=Inspired eLearning,DC=inspireme,DC=local" `
    -ChangePasswordAtLogon 1 `
    -Enabled 1	