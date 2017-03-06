# hubot-dynamic-log-level
[![Build Status](https://travis-ci.org/GeoHealth/hubot-dynamic-log-level.svg?branch=master)](https://travis-ci.org/GeoHealth/hubot-dynamic-log-level)

---

Dynamically change the log level of hubot


## Installation

Add *hubot-dynamic-log-level* to your package.json file:

```
npm install hubot-dynamic-log-level --save
```

Then add `hubot-dynamic-log-level` to your external-scripts.json:

```Javascript
["hubot-dynamic-log-level"]

```

## Usage

```
You: hubot log_level?
Hubot: Current log level is debug

You: hubot log_level=info
Hubot: Current log level is info
```
