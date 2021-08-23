# Video Application Server Code Sample in Node.js 

This Application Server code sample in Node.js facilitates communication between your client application and Airtel IQ Video Server. The communication takes place with the help of a Rest API service known as Airtel IQ Server API that allows you to provision a video room on the Airtel IQ Server and create a token to access the video room.    

The Server APIs facilitate video communication by performing the following sequential tasks: 

* Create a virtual video room on the Video Server. 

* Fetch the Room ID after room creation. 

* Generate token to join a video session as a Moderator or a Participant. 

 

## 1. Getting Started 

### 1.1 Pre-Requisites 

### 1.1.1 Authorization Credentials 

Follow the steps given below to generate API Credentials required to access Airtel IQ: 

* Create a free account on [Airtel IQ ](https://cpaasportal.videoiq.airtel.in/)

* Create your Project 

* Get the App ID and App Key generated against the Project. 

### 1.1.2 Clone Repository

* Clone this ``` git clone https://github.com/airteliq/Airtel-IQ-One-to-One-Video-Chat-Sample-Web-Application-NodeJs-Server.git```

### 1.1.3. Get SSL Certificate 

Application Server must run on a secured Web Server hence use a valid SSL Certificate for your Domain and use it to configure your Web Service to make your domain accessible on HTTPS. 

Alternatively, you may also use a self-signed certificate to run this Application Server. Some of the websites that generate self-signed certificate are: 

https://letsencrypt.org/ 

https://www.sslchecker.com/csr/self_signed 

https://www.akadia.com/services/ssh_test_certificate.html 

You also have an option to create a self-signed certificate by executing the following commands: 

```javascript 
cd Airtel-IQ-One-to-One-Video-Chat-Sample-Web-Application-NodeJs-Server

cd server   

mkdir certs   

sudo openssl req -x509 -newkey rsa:4096 -keyout ./certs/example.key -out ./certs/example.crt -days 10000 -nodes   

sudo chmod 755 ./certs/example.*  

cd .. 

``` 

### 1.1.4 Download Sample Client 


Clone or download any of the following client applications based on your requirement and language preference **<ins>within the cloned server repository and follow the instructions<ins>**:

* Web-based  

  * Javascript

      * [One to One video call](https://github.com/airteliq/one-to-one-Video-Chat-Sample-Web-Application-Javascript-Client)

      * [Multiparty video call](https://github.com/airteliq/Airtel-IQ-One-to-One-Video-Chat-Sample-Web-Application-Javascript-Client.git)
  * React Js
      * [One to One video call](https://github.com/airteliq/Airtel-IQ-One-to-One-Video-Chat-Sample-Web-Application-Reactjs-Client)


   

 

## 1.2. Configure Application Server 

* Copy the ``` server/example.env``` as ``` server/.env``` and update the values. Alternatively, you can set the following system environment variables: 

 
```javascript
SERVICE_PORT -- Node port on which your application will run. 	The default port setting is 5000 

AIRTELIQ_APP_ID -- Airtel IQ `App ID` as received on https://cpaasportal.videoiq.airtel.in/dashboard/

AIRTELIQ_APP_KEY -- Your Airtel IQ `App Key` as received on https://cpaasportal.videoiq.airtel.in/dashboard/
```

 

* On Mac and Linux, execute the following commands on a terminal. Replace all the characters after the = with your App_Id and App_Key. 
```javascript
export SERVICE_PORT=XXXX   

export AIRTELIQ_APP_ID=XXXXXXXXXX   

export AIRTELIQ_APP_KEY=XXXXXXXXX 
```
* On Windows, execute the following commands on a power shell/command prompt. Note that the key and value pairs are separated only by white space 
```javascript
setx SERVICE_PORT 'XXXX'	 

setx AIRTELIQ_APP_ID 'XXXXXXXXX'	 

setx AIRTELIQ_APP_KEY 'XXXXXXXXX' 
```
 

## 1.3. Build the server  

Execute the following command to build the project 
```javascript
npm install --save  
```
You can find the build artifacts in the ./node_modules directory. 

 
## 1.4. Run the server 

Execute the following command to start your application server. 
```javascript
cd server //Go to server directory 

node server.js // start the server 
```
## Test Video Call

* Open a browser and go to https://localhost:5000/. The browser should load the App. Go to -> Advanced -> Proceed to localhost
* Don't have a Room ID? Create here (create a new RoomID)
* Store the Room ID for future use or share
* Enter a username (e.g. test0) as a moderator
* Join and allow access to camera and microphone when prompted to start your first webRTC call through Airtel IQ
* Open another browser tab and enter https://localhost:5000/
* Enter the same roomID previously created and add a different username (test1) as a participant and click join
* Now, you should see your own video in both the tabs!
 

# 2. Know more about Server API 

A video Application Server communicates with Airtel IQ Video Service using Airtel IQ Server API, a Rest API Service used to provision and manage video rooms, create a token for client endpoints to join a session, and get post-session reports. 

This sample Application Server demonstrates only primitive usage of Server APIs, however it is worth noting that the capabilities of Airtel IQ Server APIs are not limited to provisioning a meeting room. Explore Airtel IQ Server APIs to utilize them in the best way to meet your workflow and business requirements. 

[Basics Understanding and Authentication](https://developer.videoiq.airtel.in/video/server-api/)   

[Latest Version of Server API Routes](https://developer.videoiq.airtel.in/video-api/server-api/) 

 

# 3. Support 

Airtel IQ provides a library of Documentations, How-to Guides, and Sample Codes to help software developers, interested in embedding RTC in their applications. 

Refer to the [Complete Developer’s Guide](https://developer.videoiq.airtel.in) for more details. 

For any queries, you may also write to us at [support@videoiq.airtel.in](). 
