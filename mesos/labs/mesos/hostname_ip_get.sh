#!/bin/bash
ip addr show dev eth1 |grep 'inet '| awk '{print $2}'|awk -F'/' '{print $1}'