# reqless-ui-docker

Repository for the docker image for the sinatra-based UI for reqless.

## Usage

### Environment variables

| Variable Name                   | Default                    | Description                                                         |
|---------------------------------|----------------------------|---------------------------------------------------------------------|
| QMORE_REFRESH_FREQUENCY_SECONDS | `300`                      | The frequency in seconds with which `qmore` should refresh configs. |
| REQLESS_UI_HOST                 | `localhost`                | The host the reqless UI server should bind to.                      |
| REQLESS_UI_PORT                 | `9292`                     | The port the reqless UI server should bind to.                      |
| REQLESS_UI_REDIS_URL            | `redis://localhost:6379/0` | The URL of the Redis instance the reqless UI should use.            |
