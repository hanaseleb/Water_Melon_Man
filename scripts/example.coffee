# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  # robot.hear /badger/i, (res) ->
  #   res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"
  #
  # robot.respond /open the (.*) doors/i, (res) ->
  #   doorType = res.match[1]
  #   if doorType is "pod bay"
  #     res.reply "I'm afraid I can't let you do that."
  #   else
  #     res.reply "Opening #{doorType} doors"
  #
  # robot.hear /I like pie/i, (res) ->
  #   res.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  robot.respond /:session/i, (res) ->
    res.send res.reply "SessionPlan  
    ```
    https://drive.google.com/open?id=1MOZu-Psny5FkR5St8pwdBzk8mBLIkPyz8LSnuoHn91U
    ```
    "
  robot.respond /:schedule/i, (res) ->
    res.send res.reply "Schedule
    ```
    https://drive.google.com/open?id=1dBNyS1adAcmk--_ZS3oAHaOKLKX3Eq6lQFyBt1H478Y
    ```
    "
  robot.respond /:basic/i, (res) ->
    res.send res.reply "Todai_Basics
    ```
    https://www.evernote.com/l/AAq0ZDew8CFPH5cglRjsX1RguqPGNQnTScA
    ```
    "
  robot.respond /:emergency/i, (res) ->
    res.send res.reply "Emergency Contact
    ```
    https://drive.google.com/open?id=1dUouWkqrjizYfFwyOHxNViQR_X8z0v07d9QLTRwYgd8
    ```
    "
  robot.respond /:member/i, (res) ->
    res.send res.reply "Member_List
    ```
    https://trello.com/b/WL4De2jZ/turfc-member
    ```
    "
  robot.respond /:physical/i, (res) ->
    res.send res.reply "Fundamental_Physical_Fitness
    ```
    https://docs.google.com/spreadsheets/d/1FIAspywlF5cMkUq4BKP-t9QEsTIMjov1MTrtAtvnU1o/edit?usp=sharing
    ```
    "

  robot.respond /:discipline/i, (res) ->
    res.send res.reply "TURFC Discipline
    ```
    https://docs.google.com/document/d/1IpgR192LHv6-NX26i1cyD4VXz-B3fLYoACzItKhUTJU/edit?usp=sharing
    ```
    "




  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #
  enterReplies = ['こんにちは^^', 'はじめまして^^', 'ようこそ^^', 'ハロー^^', 'おはようございます^^', 'いらっしゃい^^']
  leaveReplies = ['ばいばい><', 'さみしい！', 'またきてね^^']
  #
  robot.enter (res) ->
    res.send res.reply res.random enterReplies

  robot.leave (res) ->
    res.send res.reply res.random leaveReplies

  robot.topic (msg) ->
    msg.send 'トピックが変更されました'

  robot.respond /:physical/i, (res) ->
    res.send res.reply res.random meigen
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (res) ->
  #   robot.brain.set 'totalSodas', 0
  #   res.reply 'zzzzz'
