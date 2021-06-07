#!usr/bin/env bash

# input dop usuario 
read -p "O que deseja fazer criptografar ou descriptografar  (c/d)" choice

#verificação das escolhas do usuario
if [[ "$choice" == "c" ]]; then
  #input para o texto que vai ser criptografado
  read -p "Seu texto aqui:  " usertext
  #deixa tudo em minusculo
  usertext="${usertext,,}"
  #faz a criptografia
  echo "$usertext" | tr '[a-z]' '[x-za-w]'
else 
  #input para o texto que vai ser descriptografado
  read -p "Seu texto aqui:  " usrtext
  #deixa tudo em minusculo
  usrtext="${usrtext,,}"
  #faz a descriptografia
  echo "$usrtext" | tr '[x-za-w]' '[a-z]'
fi