import {Command, flags} from '../../foundation/Command'
import {cli} from 'cli-ux'
import * as URL from 'url'
import * as path from 'path'

export default class ThemesGet extends Command {
  static description = 'gets a theme'

  static args = [
    {name: 'url', optional: false, description: 'theme url'},
  ]

  static flags = {
    name: flags.string(),
  }

  static examples = [
    `$ air themes:get https://raw.githubusercontent.com/agnoster/agnoster-zsh-theme/master/agnoster.zsh-theme
`,
  ]

  async run() {
    const {flags: {name}, args: {url}} = this.parse(ThemesGet)

    const storeAs = this.getFilename(url, name)

    cli.action.start(`starting to downdload the theme, and storing it on ${storeAs}`)
    await this.http.download(url, this.air.themesPath, storeAs)
    cli.action.stop()
  }

  protected getFilename(url: string, name: string|undefined): string {
    if (!name) {
      const pathname = URL.parse(url).pathname

      if (!pathname) {
        this.error(new Error('Could not determine the filename from the given URL.'))
      }

      return path.posix.basename(pathname)
    }

    return name
  }
}
