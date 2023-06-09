#!/bin/bash

cat >> ~/.zshrc <<DOC

function proxy(){
  export {HTTP,HTTPS,FTP}_PROXY=http://192.168.10.105:7890
  export {http,https,ftp}_proxy=http://192.168.10.105:7890
  export ALL_PROXY=socks5://192.168.10.105:7890
  export all_proxy=socks5://192.168.10.105:7890
}

function unproxy(){
  unset {HTTP,HTTPS,FTP}_PROXY
  unset {http,https,ftp}_proxy
  unset ALL_PROXY
  unset all_proxy
}

DOC
