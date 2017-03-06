Helper = require('hubot-test-helper')
expect = require('chai').expect

# helper loads a specific script if it's a file
helper = new Helper('../index.coffee')

describe 'log_level?', ->
  room = null

  beforeEach ->
    room = helper.createRoom()

  afterEach ->
    room.destroy()

  context 'user says log_level? to hubot', ->
    beforeEach ->
      room.user.say 'alice', 'hubot log_level?'

    it 'replies "Current log level is info" to user', ->
      expect(room.messages).to.eql [
        ['alice', 'hubot log_level?']
        ['hubot', 'Current log level is info']
      ]

    it 'has the current log level of hubot equals to 6', ->
      expect(room.robot.logger.level).to.eql(6)

describe 'log_level=', ->
  room = null

  beforeEach ->
    room = helper.createRoom()

  afterEach ->
    room.destroy()

  context 'user says log_level=debug to hubot', ->
    beforeEach ->
      room.user.say 'alice', 'hubot log_level=debug'

    it 'replies "Current log level is debug" to user', ->
      expect(room.messages).to.eql [
        ['alice', 'hubot log_level=debug']
        ['hubot', 'Current log level is debug']
      ]

    it 'updates the current log level of hubot', ->
      expect(room.robot.logger.level).to.eql(7)

  context 'user says log_level=default to hubot', ->
    beforeEach ->
      room.user.say 'alice', 'hubot log_level=default'

    it 'replies "Current log level is info" to user', ->
      expect(room.messages).to.eql [
        ['alice', 'hubot log_level=default']
        ['hubot', 'Current log level is info']
      ]

    it 'updates the current log level of hubot', ->
      expect(room.robot.logger.level).to.eql(6)

  context 'user says log_level=notvalid to hubot', ->
    beforeEach ->
      room.user.say 'alice', 'hubot log_level=notvalid'

    it 'replies "Unknown level notvalid" to user', ->
      expect(room.messages).to.eql [
        ['alice', 'hubot log_level=notvalid']
        ['hubot', 'Unknown level notvalid']
      ]
