import Command from '@oclif/command'

export default class Config extends Command {
  static description = 'shows Air configuration'

  static examples = [
    `$ air config
SHELL_NAME="Shell"
`,
  ]

  async run() {
    this.log('SHELL_NAME="Air"')
  }
}
