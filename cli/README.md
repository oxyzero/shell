air-cli
=======

Air CLI

[![oclif](https://img.shields.io/badge/cli-oclif-brightgreen.svg)](https://oclif.io)
[![Version](https://img.shields.io/npm/v/air-cli.svg)](https://npmjs.org/package/air-cli)
[![Downloads/week](https://img.shields.io/npm/dw/air-cli.svg)](https://npmjs.org/package/air-cli)
[![License](https://img.shields.io/npm/l/air-cli.svg)](https://github.com/renatofmachado/air/blob/master/package.json)

<!-- toc -->
* [Usage](#usage)
* [Commands](#commands)
<!-- tocstop -->
# Usage
<!-- usage -->
```sh-session
$ npm install -g air-cli
$ air COMMAND
running command...
$ air (-v|--version|version)
air-cli/0.0.0 darwin-x64 node-v12.13.1
$ air --help [COMMAND]
USAGE
  $ air COMMAND
...
```
<!-- usagestop -->
# Commands
<!-- commands -->
* [`air config`](#air-config)
* [`air hello [FILE]`](#air-hello-file)
* [`air help [COMMAND]`](#air-help-command)

## `air config`

shows Air configuration

```
USAGE
  $ air config

EXAMPLE
  $ air config
  SHELL_NAME="Shell"
```

_See code: [src/commands/config/index.ts](https://github.com/renatofmachado/air/blob/v0.0.0/src/commands/config/index.ts)_

## `air hello [FILE]`

describe the command here

```
USAGE
  $ air hello [FILE]

OPTIONS
  -f, --force
  -h, --help       show CLI help
  -n, --name=name  name to print

EXAMPLE
  $ air hello
  hello world from ./src/hello.ts!
```

_See code: [src/commands/hello.ts](https://github.com/renatofmachado/air/blob/v0.0.0/src/commands/hello.ts)_

## `air help [COMMAND]`

display help for air

```
USAGE
  $ air help [COMMAND]

ARGUMENTS
  COMMAND  command to show help for

OPTIONS
  --all  see all commands in CLI
```

_See code: [@oclif/plugin-help](https://github.com/oclif/plugin-help/blob/v2.2.3/src/commands/help.ts)_
<!-- commandsstop -->
