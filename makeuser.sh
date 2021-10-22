#!/bin/bash

apt update && apt upgrade -y
adduser xupei
usermod -aG sudo xupei

