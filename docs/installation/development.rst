===================
Development Install
===================

.. admonition:: Description

    This document describes how to get a source checkout running to be able to develop for Plone Intranet.


We assume you want to do some work on ploneintranet. Here is what you need
to do to get yourself set up.

Setting up Your Development Environment
---------------------------------------
Make sure you have the OS-level packages you need to build Plone, this can be
achieved using `install.plone.dependencies`_.

Install Enchant libraries, this is needed for docs.

To install Enchant library on Ubuntu::

    sudo apt-get install libenchant-dev

To install Enchant library on OSX using brew. Alternatively see the
`stackoverflow article`_ on Enchant and OSX::

    brew install enchant

Set-up a development environment::

    git clone https://github.com/ploneintranet/ploneintranet.suite
    virtualenv --no-site-packages ploneintranet.suite
    bin/python-2.7 bootstrap.py -c dev.cfg -v 1.6.3  # matching the current version pin!
    bin/buildout -c dev.cfg

While we are still in development mode and don't have eggs released, you
have to make the theme explicitly

**Note**: If you don't have node/npm and ruby/bundler/jekyll available, read
the "Standalone Installation" under
https://github.com/ploneintranet/ploneintranet.theme/blob/master/README.rst
first.

Prepare the theme
-----------------
The theme files need to be created within the egg::

    cd src/ploneintranet.theme
    make release

Once the files are built a directory with static files is created in
`src/ploneintranet/theme/static/generated`.

**Note**: Everytime you pull ploneintranet.theme again and expect new javascript or any
design changes, you probably need to rerun make clean && make.

Create a new Plone instance
---------------------------

Create a new Plone instance, under `Add-ons`, choose the package
`Plone Intranet: Suite`. This activates Plone intranet site.

.. _`install.plone.dependencies`: https://github.com/collective/install.plone.dependencies
.. _`stackoverflow article`: http://stackoverflow.com/questions/3683181/cannot-install-pyenchant-on-osx

Specials:
---------

Currently I have to deactivate simplesharing.js as it throws an error on non-existing dom element and effectively deactivates the other js.
