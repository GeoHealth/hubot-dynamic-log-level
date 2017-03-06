# hubot-dynamic-log-level
[![Build Status](https://travis-ci.org/GeoHealth/hubot-dynamic-log-level.svg?branch=master)](https://travis-ci.org/GeoHealth/hubot-dynamic-log-level)
[![Dependency Status](https://gemnasium.com/badges/github.com/GeoHealth/hubot-dynamic-log-level.svg)](https://gemnasium.com/github.com/GeoHealth/hubot-dynamic-log-level)
[![Code Climate](https://codeclimate.com/github/GeoHealth/hubot-dynamic-log-level/badges/gpa.svg)](https://codeclimate.com/github/GeoHealth/hubot-dynamic-log-level)
[![Test Coverage](https://codeclimate.com/github/GeoHealth/hubot-dynamic-log-level/badges/coverage.svg)](https://codeclimate.com/github/GeoHealth/hubot-dynamic-log-level/coverage)

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
