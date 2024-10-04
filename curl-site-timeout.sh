#!/bin/bash
  echo "---------------------------------------------------------------------------"
  date
  echo "$1"
  curl "$1" -sSL -o /dev/null -w "response_code: %{http_code}\n
  dns_time: %{time_namelookup}\n\
  connect_time: %{time_connect}\n\
  AppCon time:\t%{time_appconnect}\n\
  pretransfer_time: %{time_pretransfer}\n\
  starttransfer_time: %{time_starttransfer}\n\
  total_time: %{time_total}"
  echo
