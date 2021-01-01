#!/usr/bin/sh

USERNAME=$1
PASSWORD=$2

CONTACT_DB_NAME="contacts"
DB_NAME="migadu"

# Contacts
syncevolution --create-database backend=evolution-contacts database=$CONTACT_DB_NAME
syncevolution --configure --template webdav username=$USERNAME password="$PASSWORD" syncURL=https://cdav.migadu.com/ keyring=no target-config@$DB_NAME
syncevolution --configure backend=evolution-contacts database=$CONTACT_DB_NAME @default $CONTACT_DB_NAME
syncevolution --configure database=https://cdav.migadu.com/addressbooks/$USERNAME/business backend=carddav target-config@$DB_NAME $CONTACT_DB_NAME
syncevolution --configure --template SyncEvolution_Client Sync=None syncURL=local://@$DB_NAME username=$USERNAME password=$PASSWORD $DB_NAME $CONTACT_DB_NAME
syncevolution --configure sync=two-way backend=evolution-contacts database=$CONTACT_DB_NAME $DB_NAME $CONTACT_DB_NAME

syncevolution --sync refresh-from-remote $DB_NAME $CONTACT_DB_NAME
syncevolution --sync slow $DB_NAME $CONTACT_DB_NAME
echo -e "[\e[0;34m Contacts \e[m] +--> Done."
echo ""
