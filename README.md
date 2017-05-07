
# DisplayLink v1.0.0 ![stable](https://img.shields.io/badge/stability-stable-4EBA0F.svg?style=flat)

```coffee
DisplayLink = require "DisplayLink"

listener = DisplayLink.addListener ->
  # Perform visual changes up to 60 times per second.

# Stop listening.
DisplayLink.removeListener listener
```

