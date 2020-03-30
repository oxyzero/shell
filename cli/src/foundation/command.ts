export * as flags from '@oclif/command/lib/flags'

import {Command as Base} from '@oclif/command'
import APIClient from '../api-client'
import Config from './Config'

export abstract class Command extends Base {
  _http!: APIClient

  airConfig: Config = new Config()

  get http(): APIClient {
    if (!this._http) {
      this._http = new APIClient(this.config)
    }

    return this._http
  }

  get air(): Config {
    return this.airConfig
  }
}
