#! /bin/bash

USERNAME='therealbobo'
BOX_NAME='pwnvm'
TOKEN="$(cat .token)"
PROVIDER='virtualbox'

echo -n 'Which is the new version? '
read VERSION

vagrant up --provision

[ -f package.box ] && rm package.box
vagrant package --vagrantfile Vagrantfile

URL="$(curl "https://vagrantcloud.com/api/v1/box/$USERNAME/$BOX_NAME/version/$VERSION/provider/$PROVIDER/upload?access_token=$TOKEN" | jq -r '.upload_path')"


curl -X PUT -o /tmp/progress --progress-bar --upload-file package.box "$URL"
rm /tmp/progress
