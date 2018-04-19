#!/usr/bin/env bash
cd $HOME
git clone git@github.com:afeiship/dotfiles.git .dotfiles
./.dotfiles/bin/dfm install # creates symlinks to install files


## fix perl

sudo yum -y install perl-ExtUtils-MakeMaker .
sudo yum install perl-devel perl-CPAN
