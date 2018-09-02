+++
title = "Pelican Setup"
date = 2017-08-24
categories = ["Development"]
tags = ["development", "setup"]
aliases = ["/pelican-setup.html"]
+++

Install Pelican:

```shell
sudo -H pip install pelican Markdown typogrify
```


Install Pelican themes

```shell
git clone --recursive https://github.com/getpelican/pelican-themes
sudo /usr/local/bin/pelican-themes --install pelican-themes/Flex
sudo chmod 755 /usr/local/lib/python2.7/dist-packages/pelican/themes/Flex
```


Install Pelican plugins

```shell
git clone --recursive https://github.com/getpelican/pelican-plugins
```


Fetch blog sources

```shell
git clone git@github.com:j4nu5/j4nu5.github.io.git
cd j4nu5.github.io.git
git fetch
git checkout source
```


Setup for development

```shell
mkdir cache output
```


Verify plugins root

```shell
grep PLUGIN_PATHS pelicanconf.py
```


Install Github pages

```shell
sudo -H pip install ghp-import
```


Check out the scripts and the Makefile
