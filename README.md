# Shwokl | Proxy

The proxy server for the Shwokl app, implemented using `Nginx`.

## Quick overview

The ports that are required to be open and the destination this server proxies them to:

| port  |      destination      |
| :---: | :-------------------: |
| 8080  |    Dart API Server    |
| 3306  | mySQL Database Server |
|  80   |    Flutter Web App    |
|  443  |    Flutter Web App    |

A guide that will walk you through setting up the proxy server on a Ubuntu Server install can be found in the wiki.

## Quick install

Set up the IPs for your servers in the `$API_SERVER`, `$APP_SERVER` and `$DB_SERVER` variables and then run the `install.sh` script, or run `make install`.
