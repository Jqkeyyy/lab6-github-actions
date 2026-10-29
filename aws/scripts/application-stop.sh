#!/bin/bash
set -euo pipefail
if systemctl is-active --quiet tomcat; then
  systemctl stop tomcat
fi
