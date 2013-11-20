[![Build Status](https://api.travis-ci.org/ploneintranet/ploneintranet.suite.png)](https://travis-ci.org/ploneintranet/ploneintranet.suite)

ploneintranet.suite
====================

Pre-integrated Intranet suite for Plone

This is the integration package for the Plone Intranet suite. It is a work in progress package that currently contains:

 * Dependencies on individual ploneintranet packages
 * User story testing


Concept and History
-------------------

The idea behind this project is to build upon a number of existing packages out there in the Plone
world that provide intranet-like functionality. Over the years many products have been developed,
often inside individual organisations, with much repetition. 

During an Open Space session at Plone Conference 2013 in Brasilia a plan was formed to try and
build a canonical suite of intranet functionality for Plone that will integrate / build-on / extend
existing functionality available from other packages and bring it all together in one coherent suite
with a consistent UI.

An in-person meeting was arranged to follow up and brainstorm on these ideas two weeks after the conference.
For expediency, those invited were those we knew who had an interest and experience with Plone intranets and who
were located within an hour of London.

This initial meeting was held in London and attended by:

* Matt Hamilton, Matthew Sital-Singh, Ben Ackland - Netsight (UK)
* Guido Stevens - Cosent (NL)
* Alexander Pilz - Syslab (DE)
* Rob Gietema - Four Digits (NL)
* Philip Bauer - Starzel (DE) (remote)
* Bernharn Bühlmann - 4Teamwork (CH) (remote)

A number of key areas were identified which are common requirements for intranets and which have been
repeatedly over and over by a number of similar Plone add-ons. 

Following a number of weekly Hangout sessions with the participants, a number of user stories were collected and organised
into a spreadsheet:

https://docs.google.com/spreadsheet/ccc?key=0AmooreRUAv9PdGg4eG5VWkxZVS1EaWdCQllWWnh1Snc&usp=sharing

As an example, all of the following packages,
many of which have not been publically released all allow the creation of 'workspaces' in Plone:

* slc.teamfolder
* fd.projects
* ftw.workspace
* collective.local.addgroup/workspace
* collective.workspace
* netsight.intracore.groups
* collective.team
* ftw.workspace

And those are just the ones we know about. There are probabaly even more out there. 
There may be legitimate reasons for duplicate efforts (using newer technologies, supporting regional-specifc use-cases, 
etc)
but our feeling is that the use case of many of these packages should be able to be consolidated into a single package.

We have now solicited input from a wider audience of those further afield who have interest in Plone intranets.

An initial development sprint was held at Netsight's office in the UK on the 18th - 22nd November 2013 in which this 
package (https://github.com/ploneintranet/ploneintranet.suite) and the related packages were initially created.
 
