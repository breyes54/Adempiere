@Rem	myEnvironment defines the variables used for Adempiere
@Rem	Do not edit directly - use RUN_setup
@Rem	
@Rem	$Id: myEnvironmentTemplate.bat,v 1.12 2005/01/22 21:59:15 jjanke Exp $

@Echo Setting myEnvironment ....
@Rem	Clients only needs
@Rem		ADEMPIERE_HOME
@Rem		JAVA_HOME 
@Rem	Server install needs to check
@Rem		ADEMPIERE_DB_NAME	(for Oracle)
@Rem		passwords

@Rem 	Homes ...
@SET ADEMPIERE_HOME=F:\Erp\Estable\Adempiere
@SET JAVA_HOME=C:\Program Files\Java\jdk1.7.0_80


@Rem	Database ...
@SET ADEMPIERE_DB_SERVER=localhost
@SET ADEMPIERE_DB_USER=adempiere
@SET ADEMPIERE_DB_PASSWORD=adempiere
@SET ADEMPIERE_DB_URL=jdbc:postgresql://localhost:5432/adempiere
@SET ADEMPIERE_DB_PORT=5432

@Rem	Oracle specifics
@SET ADEMPIERE_DB_PATH=postgresql
@SET ADEMPIERE_DB_NAME=adempiere
@SET ADEMPIERE_DB_SYSTEM=HelpTech@

@Rem	Homes(2)
@SET ADEMPIERE_DB_HOME=F:\Erp\Estable\Adempiere\utils\postgresql
@SET JBOSS_HOME=F:\Erp\Estable\Adempiere\jboss

@Rem	Apps Server
@SET ADEMPIERE_APPS_TYPE=jboss
@SET ADEMPIERE_APPS_SERVER=DESKTOP-SDQPUHR
@SET ADEMPIERE_JNP_PORT=1099
@SET ADEMPIERE_WEB_PORT=80
@SET ADEMPIERE_APPS_DEPLOY=jboss
@Rem	SSL Settings
@SET ADEMPIERE_SSL_PORT=443
@SET ADEMPIERE_KEYSTORE=F:\Erp\Estable\Adempiere\keystore\myKeystore
@SET ADEMPIERE_KEYSTOREWEBALIAS=adempiere
@SET ADEMPIERE_KEYSTOREPASS=myPassword

@Rem	etc.
@SET ADEMPIERE_FTP_SERVER=localhost
@SET ADEMPIERE_FTP_USER=anonymous

@Rem	Java
@SET ADEMPIERE_JAVA=C:\Program Files\Java\jdk1.7.0_80\bin\java
@SET ADEMPIERE_JAVA_OPTIONS=-Xms64M -Xmx512M -DADEMPIERE_HOME=F:\Erp\Estable\Adempiere
@SET CLASSPATH="F:\Erp\Estable\Adempiere\lib\Adempiere.jar;F:\Erp\Estable\Adempiere\lib\AdempiereCLib.jar;"

@Rem Save Environment file
@if (%1) == () copy myEnvironment.bat myEnvironment_%RANDOM%.bat /Y 

