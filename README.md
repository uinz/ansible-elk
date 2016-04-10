==== PROVISION ELK STACK ====

Provision ELK stack on your local
---------------------------------

vagrant up --provision

	On your local, create the folder structure <logtype>/<environment>/<hostname> under ansible-elk/logs/ directory


Spinning up QA ELK Instance
------------------------------
	ansible-playbook --ask-pass -i inventory/qa setup.yml

Spining up PROD ELK Instance
-------------------------------
	ansible-playbook --ask-pass -i inventory/prod setup.yml


Porting Logs to QA/PROD logstash
--------------------------------

	Create the folder structure depending upon the input type defined in the logstash configuration
	
	Format of the log folder:

		<basedirectory>/<logtype>/<environment>/<hostname>

	For instance, to transfer all app_access logs for app-test environment, create the folder structure 

	For access-logs:
		/opt/logs/access_log/testenv/server1
		/opt/logs/access_log/testenv/server2

