import opengltest/glfw

proc main() =
  if glfwInit() == GLFW_FALSE:
    raise newException(IOError, "glfwInit failed.")

  let window = glfwCreateWindow(640, 480, "Simple example", nil, nil)
  if window == nil:
    glfwTerminate()
    raise newException(IOError, "glfwCreateWindow failed.")

  glfwMakeContextCurrent(window)
  # loadExtensions()

  while glfwWindowShouldClose(window) == GLFW_FALSE:
    glfwSwapBuffers(window)
    glfwPollEvents()

  glfwDestroyWindow(window)
  glfwTerminate()

when isMainModule:
  main()