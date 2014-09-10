module.exports = Mouse =

  # returns the mouse x & y coords relative to the target
  getMouseCoords: (e) ->
    # center the view on double click
    mouseX = e.offsetX
    mouseY = e.offsetY

    unless mouseX?
      target = e.target || e.srcElement
      rect = target.getBoundingClientRect()

      unless mouseX?
        mouseX = e.clientX - rect.left
        mouseY = e.clientY - rect.top

      unless mouseX?
        console.log e
        console.log "no mouse event defined. your browser sucks"
        return

    # TODO: else
    return [mouseX,mouseY]

  getMouseCoordsScreen: (e) ->
    mouseX = e.screenX
    mouseY = e.screenY
    return [mouseX,mouseY]
