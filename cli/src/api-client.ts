import axios, {AxiosInstance, AxiosResponse} from 'axios'
import * as Config from '@oclif/config'
import * as path from 'path'
import * as fs from 'fs'

export default class APIClient {
  config: Config.IConfig

  client: AxiosInstance

  constructor(config: Config.IConfig) {
    this.config = config
    this.client = axios.create({})
  }

  public async download<T, R = AxiosResponse<T>>(url: string, absolutePath: string, storeAs: string) {
    const writer = fs.createWriteStream(path.resolve(absolutePath, storeAs))

    const response = await this.client.get(
      url,
      {responseType: 'stream'}
    )

    response.data.pipe(writer)

    return new Promise((resolve, reject) => {
      writer.on('finish', resolve)
      writer.on('error', reject)
    })
  }
}
