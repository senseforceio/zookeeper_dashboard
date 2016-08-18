===================
Zookeeper Dashboard
===================

This repository contains a dashboard for zookeeper
(https://zookeeper.apache.org/). The dashboard provides cluster browsing and
znode browsing. It was written as django application. If the dashboard is
executed as docker container the configuration of the dashboard will be passed
to the container via volume mapping.

Usage
=====

This image required a mapped configuration directory containing the
settings.py file::

    docker run -d  -v ./config:/config -p 8080:8080 zookeeper_dashboard

Legacy
======

This repository was forked from https://github.com/gamechanger/zookeeper_dashboard.
The motivation to use a customized fork was:
 - use Alpine as a base image (https://hub.docker.com/_/alpine/)
 - use config files mapped to the container instead of using environment
   variables
