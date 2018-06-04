# Yellowbrainz RabbitMQ Makefile

This Makefile will help you setup a RabbitMQ node with admin console, where the
console user is defined with a password provided as an environment variable.

The following commands are supported:

## Start

```
make rabbit RMQ_SECRET="<YourFavouritePassword>"
```

## Stop

```
make stop
```

## Clean

This step is only used if you want to completely remove the docker from your
memory. When you have used this command you must restart using the **Start**
procedure.

```
make clean
```