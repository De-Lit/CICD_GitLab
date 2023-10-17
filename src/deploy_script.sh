#!/bin/sh

SSHPASS=YOUR_SSHPASS
SSHPORT=YOUR_SSHPORT
DEPLOY_ADD=YOUR_DEPLOY_ADD

echo "Do your deploy here"
sshpass -p $SSHPASS scp -P $SSHPORT -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null "$CAT_DIR"/binaries/my_cat "$GREP_DIR"/binaries/my_grep $DEPLOY_ADD:$DEPLOY_DIR
exit $?
