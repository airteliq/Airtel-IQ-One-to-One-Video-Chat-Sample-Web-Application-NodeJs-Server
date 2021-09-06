  #!/bin/sh

  # CLone the Github Repositry  
   git clone https://github.com/airteliq/Airtel-IQ-One-to-One-Video-Chat-Sample-Web-Application-NodeJs-Server.git

  #Creating Self-Signed Certficate path ./one-to-One-Video-Chat-Sample-Web-Application-NodeJs-Server
   cd one-to-One-Video-Chat-Sample-Web-Application-NodeJs-Server
   cd server
   mkdir certs
   
   sudo openssl req -x509 -newkey rsa:4096 -keyout ./certs/example.key -out ./certs/example.crt -days 10000 -nodes
   sudo chmod 755 ./certs/example.*
   cd ..
  #Getting Node Server Port 
   echo "Enter Node port on which your application will run"
   read SERVICE_PORT
   export SERVICE_PORT
 
 #Getting Airtel IQ App ID And Key

   echo "Enter Your Airtel IQ App ID "
   read AIRTELIQ_APP_ID
   export AIRTELIQ_APP_ID
   echo "Enter Your Airtel IQ App Key"
   read  AIRTELIQ_APP_KEY
   export AIRTELIQ_APP_KEY

# Installing node Module And Starting Node Server At given Port
   npm install
   cd server
   node server.js
