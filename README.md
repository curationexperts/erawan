Erawan
======

[![Build Status](https://travis-ci.org/curationexperts/erawan.svg?branch=master)](https://travis-ci.org/curationexperts/erawan)

An institutional repository.

Development
-----------

1. Setup your database.
   We use PostgreSQL. To support the test and development environments, you'll
   need have Postgres installed and running. Ensure that your current user can
   create databases in postgres. In the `psql` console do
   `create role [username] with createdb login`. Then do
   `bundle exec rake db:create` to create the databases.
