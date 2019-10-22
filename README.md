# telega\_notify

A simple module to send messages from a Telegram bot to a pre-configured chat.
Helps getting notifications from long running or background processes.
Example usage:

```python
from telega_notify import send_message
# do some work...
send_message('The work is done.')
```

## When Telegram is blocked

Supports socks5 proxies.


## Installation

    $ pip install telega-notify


## Configuration

Reads config options from `~/.config/telega-notify.toml` and `/etc/telega-notify.toml`.  Example config:

```toml
token = '123456789:AAG................................'
chat_id = '-123456789'
proxy = 'socks5://proxy:huyoksy@127.0.0.1:8010'
```

## TODO

- Support for http proxies.
- Specify alternative chat_id from CLI and `send_message` arguments.
- Attach files.
