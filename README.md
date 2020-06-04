# ExampleRabbitMQForRasbianDocker

ExampleRabbitMQForRasbianDocker is an example how to use and configure RabbitMQ on Docker for an ARM architecture like the Raspberry Pi.
The project was tested on a Raspberry Pi 3 Model B.

[![Build status](https://ci.appveyor.com/api/projects/status/qt7506trhelwm17a?svg=true)](https://ci.appveyor.com/project/SeppPenner/examplerabbitmqforrasbiandocker)
[![GitHub issues](https://img.shields.io/github/issues/SeppPenner/ExampleRabbitMQForRasbianDocker.svg)](https://github.com/SeppPenner/ExampleRabbitMQForRasbianDocker/issues)
[![GitHub forks](https://img.shields.io/github/forks/SeppPenner/ExampleRabbitMQForRasbianDocker.svg)](https://github.com/SeppPenner/ExampleRabbitMQForRasbianDocker/network)
[![GitHub stars](https://img.shields.io/github/stars/SeppPenner/ExampleRabbitMQForRasbianDocker.svg)](https://github.com/SeppPenner/ExampleRabbitMQForRasbianDocker/stargazers)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/SeppPenner/ExampleRabbitMQForRasbianDocker/master/License.txt)

## How to use this project:

1. Clone the project to a location with git (or download the zip folder).
2. Unzip the folder (if neccessary) and cd into the folder.
3. Build the container.

```bash
docker build . -f Dockerfile -t rabbitmq
```

or simply run

```bash
build.sh
```

4. Run the container.

```bash
docker run -d \
--restart always \
--name rabbitmq \
-p 1883:1883 \
-p 15671:15671 \
-p 15672:15672 \
-p 15675:15675 \
-p 15670:15670 \
rabbitmq
```

or simply run

```bash
start.sh
```

## Usernames/ passwords to be used to publish/ subscribe:

* pi/IoT
* mqtt/IoT

These passwords can be changed in the `definitions.json` file. To change the passwords follow: https://stackoverflow.com/questions/41306350/how-to-generate-password-hash-for-rabbitmq-management-http-api
Of course, you can adjust the usernames in this file, too.

Change history
--------------

See the [Changelog](https://github.com/SeppPenner/ExampleRabbitMQForRasbianDocker/blob/master/Changelog.md).