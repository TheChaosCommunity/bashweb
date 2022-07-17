#!/bin/bash
name=bashweb
export RAND=$RANDOM # don't change this either
function init() {
	mkdir /tmp/$RAND # don't change this, I haven't integrated this into the package manager yet.
}
function get_source() {
	git clone https://github.com/TheChaosCommunity/bashweb /tmp/$RAND/git
}
function install() {
    git clone /tmp/$RAND/git
    cp -r /tmp/$RAND/git/bashweb /usr/local/bin/bashweb
    chmod +x /usr/local/bin/bashweb
    rm -rf /tmp/$RAND
}
function remove() {
    rm -rf /usr/local/bin/bashweb
}