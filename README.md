# Salesforce Marketing Cloud System Views Schema

This repo contains a set of scripts for your favorite database type if it's one of the following:

* MSSQL
* MySQL
* SQLite
* PostgreSQL

Contained within are all the known official and unofficial system views (except \_MobileSubscription since it's effectively replaced my \_SMSSubscriptionLog).

I build the schema using [dbdesigner.net](https://www.dbdesigner.net/) in a "generic" way, meaning that I didn't have the ability to specific between a couple of different field types like nvarchar and varchar.

Foreign keys, primary keys, unique fields, etc have been identified to the best of my knowledge offhand. I haven't tested it completely yet. If anything is off, please submit a pull request or open an issue and I will make updates as soon as I can get to it.

![schema](https://user-images.githubusercontent.com/879186/163687237-75769809-3c77-4b22-9de4-839c6e3a7a10.png)
