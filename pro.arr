use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

#checkpoint2

# PLAN: My project is a traffic light with three circles (red, yellow, green), where only one light is lit at a time and the rest are gray.
# The state is a String holding the current light, and it starts at "red".
# The to-draw handler draws the black box with the three circles and lights up the one that matches the state.
# The on-key handler moves to the next light (red -> green -> yellow -> red) when SPACE is pressed.
# The on-mouse handler resets the light to "red" when the mouse is clicked.
# |#

# red-on = circle(40, "solid", "red")
# yellow-on = circle(40, "solid", "yellow")
# green-on = circle(40, "solid", "green")
# bulb-off = circle(40, "solid", "gray")
# light-box = rectangle(120, 300, "solid", "black")

# example-red = overlay(above(red-on, above(bulb-off, bulb-off)), light-box)
# example-yellow = overlay(above(bulb-off, above(yellow-on, bulb-off)), light-box)
# example-green = overlay(above(bulb-off, above(bulb-off, green-on)), light-box)

#checkpoint3

fun next-light(light :: String) -> String:
  if light == "red": "green"
  else if light == "green": "yellow"
  else: "red"
  end
where:
  next-light("red") is "green"
  next-light("green") is "yellow"
  next-light("yellow") is "red"
end

fun bulb(this-color :: String, current :: String) -> Image:
  if this-color == current: circle(40, "solid", this-color)
  else: circle(40, "solid", "gray")
  end
end

fun draw-traffic(light :: String) -> Image:
  lights = above(bulb("red", light), above(bulb("yellow", light), bulb("green", light)))
  box = overlay(lights, rectangle(120, 300, "solid", "black"))
  scene = place-image(box, 200, 180, empty-scene(400, 400))
  place-image(text("SPACE = next   CLICK = reset", 16, "black"), 200, 370, scene)
end

fun traffic-key(light :: String, key :: String) -> String:
  if key == " ": next-light(light)
  else: light
  end
where:
  traffic-key("red", " ") is "green"
  traffic-key("red", "a") is "red"
end

fun traffic-mouse(light :: String, x :: Number, y :: Number, event :: String) -> String:
  if event == "button-down": "red"
  else: light
  end
where:
  traffic-mouse("yellow", 10, 10, "button-down") is "red"
  traffic-mouse("yellow", 10, 10, "move") is "yellow"
end

traffic-reactor = reactor:
  init: "red",
  to-draw: draw-traffic,
  on-key: traffic-key,
  on-mouse: traffic-mouse
end

R.interact(traffic-reactor)