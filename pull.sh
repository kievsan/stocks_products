#!/bin/bash
cd /home/kievs/stocks_products
git pull origin cicd
sudo systemctl restart gunicorn
