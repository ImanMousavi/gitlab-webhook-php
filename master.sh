#!/bin/bash
DEPLOY_LOCATION=/var/www
DEPLOY_LOG=/var/www/hook/deploy.log

cd $DEPLOY_LOCATION
echo "$(date)" >> $DEPLOY_LOG 
git checkout master
git reset --hard
git pull origin master >> $DEPLOY_LOG
composer install >> $DEPLOY_LOG
echo "done" >> $DEPLOY_LOG
