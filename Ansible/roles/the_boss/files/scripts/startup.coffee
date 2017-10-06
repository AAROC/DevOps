# Startup message

module.exports = (robot) ->
  ROOM = "random"
  MESSAGE = process.env.HUBOT_STARTUP_MESSAGE ? 'Hello, cruel world!'

  # add support for HUBOT_STARTUP_ROOM to be of format #general for channel name or @somebody for username
  roomOrPerson = { "room": /^#(.*)/, "person": /^@(.*)/ }
  isRoom =  ROOM.match roomOrPerson.room
  isPerson =  ROOM.match roomOrPerson.person
  if isRoom then return robot.messageRoom isRoom[1], MESSAGE
  if isPerson then return robot.send {"room":isPerson[1]}, MESSAGE

  robot.messageRoom ROOM, MESSAGE
  enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  #
  robot.enter (res) ->
     res.send res.random enterReplies
  robot.leave (res) ->
     res.send res.random leaveReplies
