Erawan
======

An institutional repository.

Development
-----------

1. Setup your database.
   We use PostgreSQL. To support the test and development environments, you'll
   need have Postgres installed and running. In your `psql` console do
       `create role erawan with createdb login password 'password1';`. Then do
   `bundle exec rake db:create` to setup the create the database and schema.
