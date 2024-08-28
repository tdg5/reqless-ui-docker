# reqless-ui-docker

Repository for the docker image for the [sinatra-based UI for
reqless](https://github.com/tdg5/reqless-rb?tab=readme-ov-file#web-interface).

## Usage

### Environment variables

| Variable Name                   | Default                    | Description                                           |
|-------------------|----------------------------|-------------------------------------------------------|
| REQLESS_UI_DB_URL | `redis://localhost:6379/0` | The URL of the DB instance the reqless UI should use. |
| REQLESS_UI_HOST   | `localhost`                | The host the reqless UI server should bind to.        |
| REQLESS_UI_PORT   | `9292`                     | The port the reqless UI server should bind to.        |
