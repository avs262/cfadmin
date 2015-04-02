<cfset system = CreateObject("java", "java.lang.System")>
<cfset environment = system.getenv()>
<cfset LUCEE_PASS = environment.get("LUCEE_PASS")>
<cfset MARIADB_HOST = environment.get("MARIADB_HOST")>
<cfset MARIADB_PORT = environment.get("MARIADB_PORT")>
<cfset MARIADB_NAME = environment.get("MARIADB_NAME")>
<cfset MARIADB_USER = environment.get("MARIADB_USER")>
<cfset MARIADB_PASS = environment.get("MARIADB_PASS")>


<cfadmin
action="updateDatasource"
type="web"
password="#LUCEE_PASS#"
classname="org.gjt.mm.mysql.Driver"
dsn="jdbc:mysql://#MARIADB_HOST#:#MARIADB_PORT#/#MARIADB_NAME#?useUnicode=true&autoReconnect=true&useOldAliasMetadataBehavior=false&zeroDateTimeBehavior=exception&characterEncoding=UTF-8&allowMu
ltiQueries=true&jdbcCompliantTruncation=true"
name="#MARIADB_NAME#"
newName="#MARIADB_NAME#"
dbusername="#MARIADB_USER#"
dbpassword="#MARIADB_PASS#"
>
