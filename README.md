# `classroom-control-vf`
![Build Status](https://camo.githubusercontent.com/650964740d7a241c378929f280edcc4ac8ca66f0/68747470733a2f2f7472617669732d63692e6f72672f726e6f76616b313938382f636c617373726f6f6d2d636f6e74726f6c2d76662e7376673f6272616e63683d70726f64756374696f6e)

This is the classroom control repository for the Virtual Fundamentals class.

## Usage

Small site modules should be developed in the `site` directory. This is appended
to the `$modulepath` by the `environment.conf` file so that Puppet can use modules
from this directory.

Adding modules to the `Puppetfile` will manage them in the standard `modules`
directory using r10k.

## Starter code

Note that this repository includes some incomplete starter code.
