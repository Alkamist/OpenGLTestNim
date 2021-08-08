import opengl, opengltest/glfw

const vertexShader = """
#version 330 core

layout(location = 0) in vec4 position;

void main() {
  gl_Position = position;
}
"""

const fragmentShader = """
#version 330 core

layout(location = 0) out vec4 color;

void main() {
  color = vec4(1.0, 0.0, 0.0, 1.0);
}
"""

proc compileShader(kind: Glenum, source: string): GLuint =
  result = glCreateShader(kind)
  let src = allocCStringArray([source])
  glShaderSource(result, 1, src, nil)
  glCompileShader(result)
  deallocCStringArray(src)

  var compiledOk: GLint
  glGetShaderiv(result, GL_COMPILE_STATUS, compiledOk.addr)
  if compiledOk.Glboolean == GL_FALSE:
    var length: GLint
    glGetShaderiv(result, GL_INFO_LOG_LENGTH, length.addr)
    var message = newString(length)
    glGetShaderInfoLog(result, length, length.addr, message.cstring)
    glDeleteShader(result)
    raise newException(IOError, "Failed to compile shader: " & $message)

proc createShader(vertex, fragment: string): GLuint =
  result = glCreateProgram()

  let
    vs = compileShader(GL_VERTEX_SHADER, vertex)
    fs = compileShader(GL_FRAGMENT_SHADER, fragment)

  glAttachShader(result, vs)
  glAttachShader(result, fs)
  glLinkProgram(result)
  glValidateProgram(result)

  glDeleteShader(vs)
  glDeleteShader(fs)

proc main() =
  if not glfwInit():
    raise newException(IOError, "glfwInit failed.")

  let window = glfwCreateWindow(640, 480, "Simple example", nil, nil)
  if window == nil:
    glfwTerminate()
    raise newException(IOError, "glfwCreateWindow failed.")

  glfwMakeContextCurrent(window)
  loadExtensions()

  var positions = [
    -0.5'f32, -0.5,
    0.0, 0.5,
    0.5, -0.5,
  ]

  var buffer: cuint

  glGenBuffers(1, buffer.addr)
  glBindBuffer(GL_ARRAY_BUFFER, buffer)
  glBufferData(GL_ARRAY_BUFFER, 6 * float32.sizeof, positions.addr, GL_STATIC_DRAW)

  glEnableVertexAttribArray(0)
  var rawPtr = 0
  glVertexAttribPointer(0, 2, cGL_FLOAT, GL_FALSE, float32.sizeof * 2, cast[pointer](rawPtr))

  let shader = createShader(vertexShader, fragmentShader)
  glUseProgram(shader)

  while not glfwWindowShouldClose(window):
    glClear(GL_COLOR_BUFFER_BIT)
    glDrawArrays(GL_TRIANGLES, 0, 3)
    glfwSwapBuffers(window)
    glfwPollEvents()

  glDeleteProgram(shader)

  glfwDestroyWindow(window)
  glfwTerminate()

when isMainModule:
  main()