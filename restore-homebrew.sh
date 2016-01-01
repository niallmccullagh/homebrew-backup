#!/bin/bash

failed_items=""
function install_package() {
echo EXECUTING: brew install $1 $2
  brew install $1 $2
  [ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}


brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions
brew tap homebrew/dupes
brew tap homebrew/versions


install_package ack ''
install_package brew-cask ''
install_package cheat ''
install_package dnsmasq ''
install_package docker ''
install_package docker-compose ''
install_package docker-machine ''
install_package findutils ''
install_package fleetctl ''
install_package freetype ''
install_package git ''
install_package gnu-tar ''
install_package go ''
install_package gradle ''
install_package groovy ''
install_package jenv ''
install_package jq ''
#install_package logstalgia ''
install_package macvim ''
install_package maven ''
install_package openssh '  --with-keychain-support'
install_package openssl ''
install_package p7zip ''
#install_package postgresql ''
install_package python3 ''
install_package rbenv ''
install_package ruby-build ''
install_package ssh-copy-id ''
install_package tree ''
install_package wget ''


function install_cask_package() {
  echo EXECUTING: brew cask install $1
  brew cask install $1
  [ $? -ne 0 ] && $failed_items="$failed_items $1"  # package failed to install.
}


install_cask_package 1password
install_cask_package alfred
install_cask_package atom
install_cask_package bartender
install_cask_package beyond-compare
install_cask_package cleanmymac
install_cask_package caffeine
install_cask_package colloquy
install_cask_package dropbox
install_cask_package fantastical
install_cask_package firefox
install_cask_package font-inconsolata
install_cask_package google-chrome
install_cask_package intellij-idea
install_cask_package insync
install_cask_package iterm2
install_cask_package java
install_cask_package knock
install_cask_package little-snitch
install_cask_package macdown
install_cask_package skype
install_cask_package slack
install_cask_package sonos
install_cask_package spectacle
install_cask_package spotify
install_cask_package tunnelbear
install_cask_package virtualbox

[ ! -z $failed_items ] && echo The following items were failed to install: && echo $failed_items
