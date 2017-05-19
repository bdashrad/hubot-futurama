chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-futurama', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/hubot-futurama')(@robot)

  it 'registers a respond listener for "futurama"', ->
    expect(@robot.respond).to.have.been.calledWithMatch sinon.match((val) ->
      val.test "futurama me good news, everyone!"
    )
