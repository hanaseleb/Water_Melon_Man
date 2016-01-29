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
    res.send res.reply "これですか？
    ```
    練習メニュー共有 => https://drive.google.com/open?id=1MOZu-Psny5FkR5St8pwdBzk8mBLIkPyz8LSnuoHn91U
    ```
    "
  robot.respond /:schedule/i, (res) ->
    res.send res.reply "これだろ？
    ```
   スケジュール共有 => https://drive.google.com/open?id=1dBNyS1adAcmk--_ZS3oAHaOKLKX3Eq6lQFyBt1H478Y
    ```
    "
  robot.respond /:basic/i, (res) ->
    res.send res.reply "覚えてるか？
    ```
    ●SLOGAN
    CHALLENGE

    ●3Promises
    * Be a Challenger -過去に縛られずチャレンジ！-
    * Tough Choice -キツイことを進んでやろう！-
    * Gentlemanship -気高い集団に！-

    ●5Rules
    Team
    1. 道具を大切に。
    2. 自分でできることは必ず自分でやる。
    3. 関係するすべての人に感謝の気持ちを。特にレフリー、対戦相手には最大限の敬意を！挨拶は自発的に大きな声で！
    4. 服装の乱れは心の乱れ！乱れがあればすぐに正す。
    5. 自己犠牲の精神を持ち続ける。

    Practice
    1. 練習前にアップは完了させ、心身ともにいつでも試合に臨める状態に。
    2. イーブンボールは大チャンス。捨て身のセービングで必ずボール確保を。
    3. ゴールラインまで全速力で走り切る。
    4. 弱みを見せるな。下を向く、膝に手を突く、弱音を吐くなどもってのほか。
    5. 移動はジョグ。白い歯は見せない。緊張感ある練習が練習密度を濃くする。

    ●7Basics
    Go Low & Standing Rugby

    1. 対抗戦イチ低いプレー姿勢で体を張り続ける。
    2. 倒れたら瞬時に立ちあがり３秒以内にアライメントする。
    3. 確実にタックルライン上で仕留める膝下へのタックル。
    4. 素早く確実なセービングでイーブンボールは全てチャンスに！
    5. 対抗戦最速のヘッドスピード。
    6. 80分間縦横無尽にグラウンドを走りまくるコンタクトフィットネス。
    7. 決して折れない・諦めない心。揺るがない覚悟。
    ```
    "
  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #
  # enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  # leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  #
  # robot.enter (res) ->
  #   res.send res.random enterReplies
  # robot.leave (res) ->
  #   res.send res.random leaveReplies
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
