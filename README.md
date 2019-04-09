#SSL ECDSA scripts
-----------------

SSL ECDSA scripts is a suite of scripts for generation X.509 keys/certificates.

SSL ECDSA scripts ® Copyright © 2018-2019 by SManSoft

Overview
--------

	The main features of SSL ECDSA scripts:
	
		- generation of CA key and Self-Signed CA Certificate;
		- generation of SSL private key, public key and sign public key, using CA key 
			and generation of X.509 certificate of server;
		- generation of SSL private key, public key and sign public key, using CA key 
			and generation of X.509 certificate of client;
		- usage of Elliptic Curves (ECDSA-WITH-SHA384) prime256v1 (NIST P-256, secp256r1) for
			signing of public keys;

Usage
--------

	make_exec_sh.sh
		script, that makes all .sh files (in all sub-directories) executable;
		this script can be useful after unpacking of archive;

	clear.all.sh
		clears all previous generated keys/certificates;
	
	run.ssl.sh 	
		generates all keys/certificates;
		result keys/certificates will be saved:
			fe/out.fe.smansoft.com.tar
			fe/out.fe.smansoft.com.cln.tar
			fe/out.fe.smansoft.com.srv.tar 

Please, send your notes and questions to
	mailto:info@smansoft.com
.
			
-----------------		
End of document
