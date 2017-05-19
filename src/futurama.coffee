# Description:
#   Random Futurama Quote
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot futurama
#   hubot morbotron
#
# Notes:
#   None
#
# Author:
#   bdashrad@gmail.com

module.exports = (robot) ->

  robot.respond /\b(futurama|morbotron)\b/i, (msg) ->
    robot.http('https://morbotron.com/api/random')
      .get() (err, res, body) ->
        json = JSON.parse body
        response = ""
        for i in json.Subtitles
          msg.send i.Content