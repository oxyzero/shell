import * as path from 'path'
import * as os from 'os'

export default class Config {
  basePath: string = path.resolve(os.homedir(), '.air')

  themesPath: string = path.resolve(this.basePath, 'themes')
}
