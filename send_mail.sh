#!/bin/sh

set -x #echo on

curl -o curl_output.txt \
	-X POST \
	--user "dummyuser:dummypassword" \
	https://api.mailjet.com/v3/send \
	-H 'Content-Type: application/json' \
	-d '{
      "FromEmail":"info@wegotwe.com",
      "FromName":"Your Mailjet Pilot",
      "Recipients":[
        {
          "Email":"umutkacar@gmail.com",
          "Name":"Umut Erol Kaçar"
        }
      ],
      "Subject":"Your email flight plan!",
      "Text-part":"Dear passenger, welcome to Mailjet! May the delivery force be with you!",
      "Html-part":"<h3>Dear passenger, welcome to Mailjet!</h3><br />May the delivery force be with you!"
	}'
