Domain = "dominio.local"
UserName ="andreiono"
SET cn = CREATEOBJECT("ADODB.Connection")
SET cmd = CREATEOBJECT("ADODB.Command")
SET rs = CREATEOBJECT("ADODB.Recordset")
 
cn.open "Provider=ADsDSOObject;"
 
cmd.activeconnection=cn
cmd.commandtext="SELECT ADsPath FROM 'LDAP://" & Domain & _
         "' WHERE sAMAccountName = '" & UserName & "'"
 
SET rs = cmd.EXECUTE
 
IF err<>0 THEN
    FindUser="Error connecting to Active Directory Database:" & err.description
ELSE
    IF NOT rs.BOF AND NOT rs.EOF THEN
            rs.MoveFirst
            FindUser = rs(0)
    ELSE
        FindUser = "Not Found"
    END IF
END IF
cn.close