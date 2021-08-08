const glfwDir = "glfw/src/"

when defined(useGlfwDll):
  when defined(windows):
    const glfwDll* = "glfw3.dll"
  elif defined(macosx):
    const glfwDll* = "libglfw3.dylib"
  else:
    const glfwDll* = "libglfw.so.3"
else:
  when not defined(emscripten):
    {.compile: "glfw/private/glfw/src/vulkan.c".}
  when defined(emscripten):
    {.passL: "-s USE_GLFW=3".}
  elif defined(windows):
    when defined(vcc):
      {.passL: "opengl32.lib gdi32.lib user32.lib shell32.lib" .}
    else:
      {.passL: "-lopengl32 -lgdi32" .}
    {.passC: "-D_GLFW_WIN32",
      compile: glfwDir & "win32_init.c",
      compile: glfwDir & "win32_joystick.c",
      compile: glfwDir & "win32_monitor.c",
      compile: glfwDir & "win32_time.c",
      compile: glfwDir & "win32_thread.c",
      compile: glfwDir & "win32_window.c",
      compile: glfwDir & "wgl_context.c",
      compile: glfwDir & "egl_context.c",
      compile: glfwDir & "osmesa_context.c".}
  elif defined(macosx):
    {.passC: "-D_GLFW_COCOA -D_GLFW_USE_CHDIR -D_GLFW_USE_MENUBAR -D_GLFW_USE_RETINA",
      passL: "-framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo",
      compile: glfwDir & "cocoa_init.m",
      compile: glfwDir & "cocoa_joystick.m",
      compile: glfwDir & "cocoa_monitor.m",
      compile: glfwDir & "cocoa_window.m",
      compile: glfwDir & "cocoa_time.c",
      compile: glfwDir & "posix_thread.c",
      compile: glfwDir & "nsgl_context.m",
      compile: glfwDir & "egl_context.c",
      compile: glfwDir & "osmesa_context.c".}
  else:
    {.passL: "-pthread -lGL -lX11 -lXrandr -lXxf86vm -lXi -lXcursor -lm -lXinerama".}
    when defined(mir):
      {.passC: "-D_GLFW_MIR",
        compile: glfwDir & "mir_init.c",
        compile: glfwDir & "mir_monitor.c",
        compile: glfwDir & "mir_window.c".}
    elif defined(wayland):
      {.passC: "-D_GLFW_WAYLAND",
        compile: glfwDir & "wl_init.c",
        compile: glfwDir & "wl_monitor.c",
        compile: glfwDir & "wl_window.c".}
    else:
      {.passC: "-D_GLFW_X11",
        compile: glfwDir & "x11_init.c",
        compile: glfwDir & "x11_monitor.c",
        compile: glfwDir & "x11_window.c",
        compile: glfwDir & "glx_context.c".}
    {.compile: glfwDir & "xkb_unicode.c",
      compile: glfwDir & "linux_joystick.c",
      compile: glfwDir & "posix_time.c",
      compile: glfwDir & "egl_context.c",
      compile: glfwDir & "osmesa_context.c",
      compile: glfwDir & "posix_thread.c".}
  when not defined(emscripten):
    {.compile: glfwDir & "context.c",
      compile: glfwDir & "init.c",
      compile: glfwDir & "input.c",
      compile: glfwDir & "monitor.c",
      compile: glfwDir & "window.c".}
when defined(vulkan):
  import vulkan

const
  GLFW_VERSION_MAJOR* = 3
  GLFW_VERSION_MINOR* = 4
  GLFW_VERSION_REVISION* = 0
  GLFW_TRUE* = 1
  GLFW_FALSE* = 0
  GLFW_RELEASE* = 0
  GLFW_PRESS* = 1
  GLFW_REPEAT* = 2
  GLFW_HAT_CENTERED* = 0
  GLFW_HAT_UP* = 1
  GLFW_HAT_RIGHT* = 2
  GLFW_HAT_DOWN* = 4
  GLFW_HAT_LEFT* = 8
  GLFW_HAT_RIGHT_UP* = GLFW_HAT_RIGHT or GLFW_HAT_UP
  GLFW_HAT_RIGHT_DOWN* = GLFW_HAT_RIGHT or GLFW_HAT_DOWN
  GLFW_HAT_LEFT_UP* = GLFW_HAT_LEFT or GLFW_HAT_UP
  GLFW_HAT_LEFT_DOWN* = GLFW_HAT_LEFT or GLFW_HAT_DOWN
  GLFW_KEY_UNKNOWN* = -1
  GLFW_KEY_SPACE* = 32
  GLFW_KEY_APOSTROPHE* = 39
  GLFW_KEY_COMMA* = 44
  GLFW_KEY_MINUS* = 45
  GLFW_KEY_PERIOD* = 46
  GLFW_KEY_SLASH* = 47
  GLFW_KEY_0* = 48
  GLFW_KEY_1* = 49
  GLFW_KEY_2* = 50
  GLFW_KEY_3* = 51
  GLFW_KEY_4* = 52
  GLFW_KEY_5* = 53
  GLFW_KEY_6* = 54
  GLFW_KEY_7* = 55
  GLFW_KEY_8* = 56
  GLFW_KEY_9* = 57
  GLFW_KEY_SEMICOLON* = 59
  GLFW_KEY_EQUAL* = 61
  GLFW_KEY_A* = 65
  GLFW_KEY_B* = 66
  GLFW_KEY_C* = 67
  GLFW_KEY_D* = 68
  GLFW_KEY_E* = 69
  GLFW_KEY_F* = 70
  GLFW_KEY_G* = 71
  GLFW_KEY_H* = 72
  GLFW_KEY_I* = 73
  GLFW_KEY_J* = 74
  GLFW_KEY_K* = 75
  GLFW_KEY_L* = 76
  GLFW_KEY_M* = 77
  GLFW_KEY_N* = 78
  GLFW_KEY_O* = 79
  GLFW_KEY_P* = 80
  GLFW_KEY_Q* = 81
  GLFW_KEY_R* = 82
  GLFW_KEY_S* = 83
  GLFW_KEY_T* = 84
  GLFW_KEY_U* = 85
  GLFW_KEY_V* = 86
  GLFW_KEY_W* = 87
  GLFW_KEY_X* = 88
  GLFW_KEY_Y* = 89
  GLFW_KEY_Z* = 90
  GLFW_KEY_LEFT_BRACKET* = 91
  GLFW_KEY_BACKSLASH* = 92
  GLFW_KEY_RIGHT_BRACKET* = 93
  GLFW_KEY_GRAVE_ACCENT* = 96
  GLFW_KEY_WORLD_1* = 161
  GLFW_KEY_WORLD_2* = 162
  GLFW_KEY_ESCAPE* = 256
  GLFW_KEY_ENTER* = 257
  GLFW_KEY_TAB* = 258
  GLFW_KEY_BACKSPACE* = 259
  GLFW_KEY_INSERT* = 260
  GLFW_KEY_DELETE* = 261
  GLFW_KEY_RIGHT* = 262
  GLFW_KEY_LEFT* = 263
  GLFW_KEY_DOWN* = 264
  GLFW_KEY_UP* = 265
  GLFW_KEY_PAGE_UP* = 266
  GLFW_KEY_PAGE_DOWN* = 267
  GLFW_KEY_HOME* = 268
  GLFW_KEY_END* = 269
  GLFW_KEY_CAPS_LOCK* = 280
  GLFW_KEY_SCROLL_LOCK* = 281
  GLFW_KEY_NUM_LOCK* = 282
  GLFW_KEY_PRINT_SCREEN* = 283
  GLFW_KEY_PAUSE* = 284
  GLFW_KEY_F1* = 290
  GLFW_KEY_F2* = 291
  GLFW_KEY_F3* = 292
  GLFW_KEY_F4* = 293
  GLFW_KEY_F5* = 294
  GLFW_KEY_F6* = 295
  GLFW_KEY_F7* = 296
  GLFW_KEY_F8* = 297
  GLFW_KEY_F9* = 298
  GLFW_KEY_F10* = 299
  GLFW_KEY_F11* = 300
  GLFW_KEY_F12* = 301
  GLFW_KEY_F13* = 302
  GLFW_KEY_F14* = 303
  GLFW_KEY_F15* = 304
  GLFW_KEY_F16* = 305
  GLFW_KEY_F17* = 306
  GLFW_KEY_F18* = 307
  GLFW_KEY_F19* = 308
  GLFW_KEY_F20* = 309
  GLFW_KEY_F21* = 310
  GLFW_KEY_F22* = 311
  GLFW_KEY_F23* = 312
  GLFW_KEY_F24* = 313
  GLFW_KEY_F25* = 314
  GLFW_KEY_KP_0* = 320
  GLFW_KEY_KP_1* = 321
  GLFW_KEY_KP_2* = 322
  GLFW_KEY_KP_3* = 323
  GLFW_KEY_KP_4* = 324
  GLFW_KEY_KP_5* = 325
  GLFW_KEY_KP_6* = 326
  GLFW_KEY_KP_7* = 327
  GLFW_KEY_KP_8* = 328
  GLFW_KEY_KP_9* = 329
  GLFW_KEY_KP_DECIMAL* = 330
  GLFW_KEY_KP_DIVIDE* = 331
  GLFW_KEY_KP_MULTIPLY* = 332
  GLFW_KEY_KP_SUBTRACT* = 333
  GLFW_KEY_KP_ADD* = 334
  GLFW_KEY_KP_ENTER* = 335
  GLFW_KEY_KP_EQUAL* = 336
  GLFW_KEY_LEFT_SHIFT* = 340
  GLFW_KEY_LEFT_CONTROL* = 341
  GLFW_KEY_LEFT_ALT* = 342
  GLFW_KEY_LEFT_SUPER* = 343
  GLFW_KEY_RIGHT_SHIFT* = 344
  GLFW_KEY_RIGHT_CONTROL* = 345
  GLFW_KEY_RIGHT_ALT* = 346
  GLFW_KEY_RIGHT_SUPER* = 347
  GLFW_KEY_MENU* = 348
  GLFW_KEY_LAST* = GLFW_KEY_MENU
  GLFW_MOD_SHIFT* = 0x0001
  GLFW_MOD_CONTROL* = 0x0002
  GLFW_MOD_ALT* = 0x0004
  GLFW_MOD_SUPER* = 0x0008
  GLFW_MOD_CAPS_LOCK* = 0x0010
  GLFW_MOD_NUM_LOCK* = 0x0020
  GLFW_MOUSE_BUTTON_1* = 0
  GLFW_MOUSE_BUTTON_2* = 1
  GLFW_MOUSE_BUTTON_3* = 2
  GLFW_MOUSE_BUTTON_4* = 3
  GLFW_MOUSE_BUTTON_5* = 4
  GLFW_MOUSE_BUTTON_6* = 5
  GLFW_MOUSE_BUTTON_7* = 6
  GLFW_MOUSE_BUTTON_8* = 7
  GLFW_MOUSE_BUTTON_LAST* = GLFW_MOUSE_BUTTON_8
  GLFW_MOUSE_BUTTON_LEFT* = GLFW_MOUSE_BUTTON_1
  GLFW_MOUSE_BUTTON_RIGHT* = GLFW_MOUSE_BUTTON_2
  GLFW_MOUSE_BUTTON_MIDDLE* = GLFW_MOUSE_BUTTON_3
  GLFW_JOYSTICK_1* = 0
  GLFW_JOYSTICK_2* = 1
  GLFW_JOYSTICK_3* = 2
  GLFW_JOYSTICK_4* = 3
  GLFW_JOYSTICK_5* = 4
  GLFW_JOYSTICK_6* = 5
  GLFW_JOYSTICK_7* = 6
  GLFW_JOYSTICK_8* = 7
  GLFW_JOYSTICK_9* = 8
  GLFW_JOYSTICK_10* = 9
  GLFW_JOYSTICK_11* = 10
  GLFW_JOYSTICK_12* = 11
  GLFW_JOYSTICK_13* = 12
  GLFW_JOYSTICK_14* = 13
  GLFW_JOYSTICK_15* = 14
  GLFW_JOYSTICK_16* = 15
  GLFW_JOYSTICK_LAST* = GLFW_JOYSTICK_16
  GLFW_GAMEPAD_BUTTON_A* = 0
  GLFW_GAMEPAD_BUTTON_B* = 1
  GLFW_GAMEPAD_BUTTON_X* = 2
  GLFW_GAMEPAD_BUTTON_Y* = 3
  GLFW_GAMEPAD_BUTTON_LEFT_BUMPER* = 4
  GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER* = 5
  GLFW_GAMEPAD_BUTTON_BACK* = 6
  GLFW_GAMEPAD_BUTTON_START* = 7
  GLFW_GAMEPAD_BUTTON_GUIDE* = 8
  GLFW_GAMEPAD_BUTTON_LEFT_THUMB* = 9
  GLFW_GAMEPAD_BUTTON_RIGHT_THUMB* = 10
  GLFW_GAMEPAD_BUTTON_DPAD_UP* = 11
  GLFW_GAMEPAD_BUTTON_DPAD_RIGHT* = 12
  GLFW_GAMEPAD_BUTTON_DPAD_DOWN* = 13
  GLFW_GAMEPAD_BUTTON_DPAD_LEFT* = 14
  GLFW_GAMEPAD_BUTTON_LAST* = GLFW_GAMEPAD_BUTTON_DPAD_LEFT
  GLFW_GAMEPAD_BUTTON_CROSS* = GLFW_GAMEPAD_BUTTON_A
  GLFW_GAMEPAD_BUTTON_CIRCLE* = GLFW_GAMEPAD_BUTTON_B
  GLFW_GAMEPAD_BUTTON_SQUARE* = GLFW_GAMEPAD_BUTTON_X
  GLFW_GAMEPAD_BUTTON_TRIANGLE* = GLFW_GAMEPAD_BUTTON_Y
  GLFW_GAMEPAD_AXIS_LEFT_X* = 0
  GLFW_GAMEPAD_AXIS_LEFT_Y* = 1
  GLFW_GAMEPAD_AXIS_RIGHT_X* = 2
  GLFW_GAMEPAD_AXIS_RIGHT_Y* = 3
  GLFW_GAMEPAD_AXIS_LEFT_TRIGGER* = 4
  GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER* = 5
  GLFW_GAMEPAD_AXIS_LAST* = GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER
  GLFW_NO_ERROR* = 0
  GLFW_NOT_INITIALIZED* = 0x00010001
  GLFW_NO_CURRENT_CONTEXT* = 0x00010002
  GLFW_INVALID_ENUM* = 0x00010003
  GLFW_INVALID_VALUE* = 0x00010004
  GLFW_OUT_OF_MEMORY* = 0x00010005
  GLFW_API_UNAVAILABLE* = 0x00010006
  GLFW_VERSION_UNAVAILABLE* = 0x00010007
  GLFW_PLATFORM_ERROR* = 0x00010008
  GLFW_FORMAT_UNAVAILABLE* = 0x00010009
  GLFW_NO_WINDOW_CONTEXT* = 0x0001000A
  GLFW_CURSOR_UNAVAILABLE* = 0x0001000B
  GLFW_FEATURE_UNAVAILABLE* = 0x0001000C
  GLFW_FEATURE_UNIMPLEMENTED* = 0x0001000D
  GLFW_FOCUSED* = 0x00020001
  GLFW_ICONIFIED* = 0x00020002
  GLFW_RESIZABLE* = 0x00020003
  GLFW_VISIBLE* = 0x00020004
  GLFW_DECORATED* = 0x00020005
  GLFW_AUTO_ICONIFY* = 0x00020006
  GLFW_FLOATING* = 0x00020007
  GLFW_MAXIMIZED* = 0x00020008
  GLFW_CENTER_CURSOR* = 0x00020009
  GLFW_TRANSPARENT_FRAMEBUFFER* = 0x0002000A
  GLFW_HOVERED* = 0x0002000B
  GLFW_FOCUS_ON_SHOW* = 0x0002000C
  GLFW_MOUSE_BUTTON_PASSTHROUGH* = 0x0002000D
  GLFW_RED_BITS* = 0x00021001
  GLFW_GREEN_BITS* = 0x00021002
  GLFW_BLUE_BITS* = 0x00021003
  GLFW_ALPHA_BITS* = 0x00021004
  GLFW_DEPTH_BITS* = 0x00021005
  GLFW_STENCIL_BITS* = 0x00021006
  GLFW_ACCUM_RED_BITS* = 0x00021007
  GLFW_ACCUM_GREEN_BITS* = 0x00021008
  GLFW_ACCUM_BLUE_BITS* = 0x00021009
  GLFW_ACCUM_ALPHA_BITS* = 0x0002100A
  GLFW_AUX_BUFFERS* = 0x0002100B
  GLFW_STEREO* = 0x0002100C
  GLFW_SAMPLES* = 0x0002100D
  GLFW_SRGB_CAPABLE* = 0x0002100E
  GLFW_REFRESH_RATE* = 0x0002100F
  GLFW_DOUBLEBUFFER* = 0x00021010
  GLFW_CLIENT_API* = 0x00022001
  GLFW_CONTEXT_VERSION_MAJOR* = 0x00022002
  GLFW_CONTEXT_VERSION_MINOR* = 0x00022003
  GLFW_CONTEXT_REVISION* = 0x00022004
  GLFW_CONTEXT_ROBUSTNESS* = 0x00022005
  GLFW_OPENGL_FORWARD_COMPAT* = 0x00022006
  GLFW_CONTEXT_DEBUG* = 0x00022007
  GLFW_OPENGL_DEBUG_CONTEXT* = GLFW_CONTEXT_DEBUG
  GLFW_OPENGL_PROFILE* = 0x00022008
  GLFW_CONTEXT_RELEASE_BEHAVIOR* = 0x00022009
  GLFW_CONTEXT_NO_ERROR* = 0x0002200A
  GLFW_CONTEXT_CREATION_API* = 0x0002200B
  GLFW_SCALE_TO_MONITOR* = 0x0002200C
  GLFW_COCOA_RETINA_FRAMEBUFFER* = 0x00023001
  GLFW_COCOA_FRAME_NAME* = 0x00023002
  GLFW_COCOA_GRAPHICS_SWITCHING* = 0x00023003
  GLFWX11_CLASS_NAME* = 0x00024001
  GLFWX11_INSTANCE_NAME* = 0x00024002
  GLFW_WIN32_KEYBOARD_MENU* = 0x00025001
  GLFW_NO_API* = 0
  GLFW_OPENGL_API* = 0x00030001
  GLFW_OPENGL_ES_API* = 0x00030002
  GLFW_NO_ROBUSTNESS* = 0
  GLFW_NO_RESET_NOTIFICATION* = 0x00031001
  GLFW_LOSE_CONTEXT_ON_RESET* = 0x00031002
  GLFW_OPENGL_ANY_PROFILE* = 0
  GLFW_OPENGL_CORE_PROFILE* = 0x00032001
  GLFW_OPENGL_COMPAT_PROFILE* = 0x00032002
  GLFW_CURSOR_SPECIAL* = 0x00033001 # Originally GLFW_CURSOR but conflicts with GLFWcursor type
  GLFW_STICKY_KEYS* = 0x00033002
  GLFW_STICKY_MOUSE_BUTTONS* = 0x00033003
  GLFW_LOCK_KEY_MODS* = 0x00033004
  GLFW_RAW_MOUSE_MOTION* = 0x00033005
  GLFW_CURSOR_NORMAL* = 0x00034001
  GLFW_CURSOR_HIDDEN* = 0x00034002
  GLFW_CURSOR_DISABLED* = 0x00034003
  GLFW_ANY_RELEASE_BEHAVIOR* = 0
  GLFW_RELEASE_BEHAVIOR_FLUSH* = 0x00035001
  GLFW_RELEASE_BEHAVIOR_NONE* = 0x00035002
  GLFW_NATIVE_CONTEXT_API* = 0x00036001
  GLFW_EGL_CONTEXT_API* = 0x00036002
  GLFW_OSMESA_CONTEXT_API* = 0x00036003
  GLFW_ANGLE_PLATFORM_TYPE_NONE* = 0x00037001
  GLFW_ANGLE_PLATFORM_TYPE_OPENGL* = 0x00037002
  GLFW_ANGLE_PLATFORM_TYPE_OPENGLES* = 0x00037003
  GLFW_ANGLE_PLATFORM_TYPE_D3D9* = 0x00037004
  GLFW_ANGLE_PLATFORM_TYPE_D3D11* = 0x00037005
  GLFW_ANGLE_PLATFORM_TYPE_VULKAN* = 0x00037007
  GLFW_ANGLE_PLATFORM_TYPE_METAL* = 0x00037008
  GLFW_ARROW_CURSOR* = 0x00036001
  GLFW_IBEAM_CURSOR* = 0x00036002
  GLFW_CROSSHAIR_CURSOR* = 0x00036003
  GLFW_POINTING_HAND_CURSOR* = 0x00036004
  GLFW_RESIZE_EW_CURSOR* = 0x00036005
  GLFW_RESIZE_NS_CURSOR* = 0x00036006
  GLFW_RESIZE_NWSE_CURSOR* = 0x00036007
  GLFW_RESIZE_NESW_CURSOR* = 0x00036008
  GLFW_RESIZE_ALL_CURSOR* = 0x00036009
  GLFW_NOT_ALLOWED_CURSOR* = 0x0003600A
  GLFW_HRESIZE_CURSOR* = GLFW_RESIZE_EW_CURSOR
  GLFW_VRESIZE_CURSOR* = GLFW_RESIZE_NS_CURSOR
  GLFW_HAND_CURSOR* = GLFW_POINTING_HAND_CURSOR
  GLFW_CONNECTED* = 0x00040001
  GLFW_DISCONNECTED* = 0x00040002
  GLFW_JOYSTICK_HAT_BUTTONS* = 0x00050001
  GLFW_ANGLE_PLATFORM_TYPE* = 0x00050002
  GLFW_COCOA_CHDIR_RESOURCES* = 0x00051001
  GLFW_COCOA_MENUBAR* = 0x00051002
  GLFW_DONT_CARE* = -1

type
  GLFWmonitor* = ptr object
  GLFWwindow* = ptr object
  GLFWcursor* = ptr object

  GLFWvidmode* = object
    width*: int32
    height*: int32
    redBits*: int32
    greenBits*: int32
    blueBits*: int32
    refreshRate*: int32

  GLFWgammaramp* = object
    red*: uint16
    green*: uint16
    blue*: uint16
    size*: uint32

  GLFWimage* = object
    width*: int32
    height*: int32
    pixels*: ptr cuchar

  GLFWgamepadstate* = object
    buttons*: array[15, bool]
    axes*: array[6, float32]

  GLFWglproc* = pointer
  GLFWvkProc* = pointer
  GLFWerrorfun* = proc(error_code: int32, description: cstring): void {.cdecl.}
  GLFWwindowposfun* = proc(window: GLFWwindow, xpos: int32, ypos: int32): void {.cdecl.}
  GLFWwindowsizefun* = proc(window: GLFWwindow, width: int32, height: int32): void {.cdecl.}
  GLFWwindowclosefun* = proc(window: GLFWwindow): void {.cdecl.}
  GLFWwindowrefreshfun* = proc(window: GLFWwindow): void {.cdecl.}
  GLFWwindowfocusfun* = proc(window: GLFWwindow, focused: bool): void {.cdecl.}
  GLFWwindowiconifyfun* = proc(window: GLFWwindow, iconified: bool): void {.cdecl.}
  GLFWwindowmaximizefun* = proc(window: GLFWwindow, maximized: int32): void {.cdecl.}
  GLFWframebuffersizefun* = proc(window: GLFWwindow, width: int32, height: int32): void {.cdecl.}
  GLFWwindowcontentscalefun* = proc(window: GLFWwindow, xscale: float32, yscale: float32): void {.cdecl.}
  GLFWmousebuttonfun* = proc(window: GLFWwindow, button: int32, action: int32, mods: int32): void {.cdecl.}
  GLFWcursorposfun* = proc(window: GLFWwindow, xpos: float64, ypos: float64): void {.cdecl.}
  GLFWcursorenterfun* = proc(window: GLFWwindow, entered: bool): void {.cdecl.}
  GLFWscrollfun* = proc(window: GLFWwindow, xoffset: float64, yoffset: float64): void {.cdecl.}
  GLFWkeyfun* = proc(window: GLFWwindow, key: int32, scancode: int32, action: int32, mods: int32): void {.cdecl.}
  GLFWcharfun* = proc(window: GLFWwindow, codepoint: uint32): void {.cdecl.}
  GLFWcharmodsfun* = proc(window: GLFWwindow, codepoint: uint32, mods: int32): void {.cdecl.}
  GLFWdropfun* = proc(window: GLFWwindow, path_count: int32, paths: cstringArray): void {.cdecl.}
  GLFWmonitorfun* = proc(monitor: GLFWmonitor, event: int32): void {.cdecl.}
  GLFWjoystickfun* = proc(jid: int32, event: int32): void {.cdecl.}

when defined(useGlfwDll):
  {.push dynlib: glfwDll, cdecl.}
else:
  {.push cdecl.}

proc glfwInit*(): bool {.importc.}
proc glfwTerminate*(): void {.importc.}
proc glfwInitHint*(hint: int32, value: int32): void {.importc.}
proc glfwGetVersion*(major: ptr int32, minor: ptr int32, rev: ptr int32): void {.importc.}
proc glfwGetVersionString*(): cstring {.importc.}
proc glfwGetError*(description: cstringArray): int32 {.importc.}
proc glfwSetErrorCallback*(callback: GLFWErrorfun): GLFWErrorfun {.importc.}
proc glfwGetMonitors*(count: ptr int32): ptr UncheckedArray[GLFWmonitor] {.importc.}
proc glfwGetPrimaryMonitor*(): GLFWmonitor {.importc.}
proc glfwGetMonitorPos*(monitor: GLFWmonitor, xpos: ptr int32, ypos: ptr int32): void {.importc.}
proc glfwGetMonitorWorkarea*(monitor: GLFWmonitor, xpos: ptr int32, ypos: ptr int32, width: ptr int32, height: ptr int32): void {.importc.}
proc glfwGetMonitorPhysicalSize*(monitor: GLFWmonitor, widthMM: ptr int32, heightMM: ptr int32): void {.importc.}
proc glfwGetMonitorContentScale*(monitor: GLFWmonitor, xscale: ptr float32, yscale: ptr float32): void {.importc.}
proc glfwGetMonitorName*(monitor: GLFWmonitor): cstring {.importc.}
proc glfwSetMonitorUserPointer*(monitor: GLFWmonitor, pointer: pointer): void {.importc.}
proc glfwGetMonitorUserPointer*(monitor: GLFWmonitor): pointer {.importc.}
proc glfwSetMonitorCallback*(callback: GLFWMonitorfun): GLFWMonitorfun {.importc.}
proc glfwGetVideoModes*(monitor: GLFWmonitor, count: ptr int32): ptr GLFWVidmode {.importc.}
proc glfwGetVideoMode*(monitor: GLFWmonitor): ptr GLFWVidmode {.importc.}
proc glfwSetGamma*(monitor: GLFWmonitor, gamma: float32): void {.importc.}
proc glfwGetGammaRamp*(monitor: GLFWmonitor): ptr GLFWGammaramp {.importc.}
proc glfwSetGammaRamp*(monitor: GLFWmonitor, ramp: ptr GLFWGammaramp): void {.importc.}
proc glfwDefaultWindowHints*(): void {.importc.}
proc glfwWindowHint*(hint: int32, value: int32): void {.importc.}
proc glfwWindowHintString*(hint: int32, value: cstring): void {.importc.}
proc glfwCreateWindow*(width: int32, height: int32, title: cstring, monitor: GLFWmonitor, share: GLFWwindow): GLFWwindow {.importc.}
proc glfwDestroyWindow*(window: GLFWwindow): void {.importc.}
proc glfwWindowShouldClose*(window: GLFWwindow): bool {.importc.}
proc glfwSetWindowShouldClose*(window: GLFWwindow, value: bool): void {.importc.}
proc glfwSetWindowTitle*(window: GLFWwindow, title: cstring): void {.importc.}
proc glfwSetWindowIcon*(window: GLFWwindow, count: int32, images: ptr GLFWimage): void {.importc.}
proc glfwGetWindowPos*(window: GLFWwindow, xpos: ptr int32, ypos: ptr int32): void {.importc.}
proc glfwSetWindowPos*(window: GLFWwindow, xpos: int32, ypos: int32): void {.importc.}
proc glfwGetWindowSize*(window: GLFWwindow, width: ptr int32, height: ptr int32): void {.importc.}
proc glfwSetWindowSizeLimits*(window: GLFWwindow, minwidth: int32, minheight: int32, maxwidth: int32, maxheight: int32): void {.importc.}
proc glfwSetWindowAspectRatio*(window: GLFWwindow, numer: int32, denom: int32): void {.importc.}
proc glfwSetWindowSize*(window: GLFWwindow, width: int32, height: int32): void {.importc.}
proc glfwGetFramebufferSize*(window: GLFWwindow, width: ptr int32, height: ptr int32): void {.importc.}
proc glfwGetWindowFrameSize*(window: GLFWwindow, left: ptr int32, top: ptr int32, right: ptr int32, bottom: ptr int32): void {.importc.}
proc glfwGetWindowContentScale*(window: GLFWwindow, xscale: ptr float32, yscale: ptr float32): void {.importc.}
proc glfwGetWindowOpacity*(window: GLFWwindow): float32 {.importc.}
proc glfwSetWindowOpacity*(window: GLFWwindow, opacity: float32): void {.importc.}
proc glfwIconifyWindow*(window: GLFWwindow): void {.importc.}
proc glfwRestoreWindow*(window: GLFWwindow): void {.importc.}
proc glfwMaximizeWindow*(window: GLFWwindow): void {.importc.}
proc glfwShowWindow*(window: GLFWwindow): void {.importc.}
proc glfwHideWindow*(window: GLFWwindow): void {.importc.}
proc glfwFocusWindow*(window: GLFWwindow): void {.importc.}
proc glfwRequestWindowAttention*(window: GLFWwindow): void {.importc.}
proc glfwGetWindowMonitor*(window: GLFWwindow): GLFWmonitor {.importc.}
proc glfwSetWindowMonitor*(window: GLFWwindow, monitor: GLFWmonitor, xpos: int32, ypos: int32, width: int32, height: int32, refreshRate: int32): void {.importc.}
proc glfwGetWindowAttrib*(window: GLFWwindow, attrib: int32): int32 {.importc.}
proc glfwSetWindowAttrib*(window: GLFWwindow, attrib: int32, value: int32): void {.importc.}
proc glfwSetWindowUserPointer*(window: GLFWwindow, pointer: pointer): void {.importc.}
proc glfwGetWindowUserPointer*(window: GLFWwindow): pointer {.importc.}
proc glfwSetWindowPosCallback*(window: GLFWwindow, callback: GLFWWindowposfun): GLFWWindowposfun {.importc.}
proc glfwSetWindowSizeCallback*(window: GLFWwindow, callback: GLFWWindowsizefun): GLFWWindowsizefun {.importc.}
proc glfwSetWindowCloseCallback*(window: GLFWwindow, callback: GLFWWindowclosefun): GLFWWindowclosefun {.importc.}
proc glfwSetWindowRefreshCallback*(window: GLFWwindow, callback: GLFWWindowrefreshfun): GLFWWindowrefreshfun {.importc.}
proc glfwSetWindowFocusCallback*(window: GLFWwindow, callback: GLFWWindowfocusfun): GLFWWindowfocusfun {.importc.}
proc glfwSetWindowIconifyCallback*(window: GLFWwindow, callback: GLFWWindowiconifyfun): GLFWWindowiconifyfun {.importc.}
proc glfwSetWindowMaximizeCallback*(window: GLFWwindow, callback: GLFWWindowmaximizefun): GLFWWindowmaximizefun {.importc.}
proc glfwSetFramebufferSizeCallback*(window: GLFWwindow, callback: GLFWFramebuffersizefun): GLFWFramebuffersizefun {.importc.}
proc glfwSetWindowContentScaleCallback*(window: GLFWwindow, callback: GLFWWindowcontentscalefun): GLFWWindowcontentscalefun {.importc.}
proc glfwPollEvents*(): void {.importc.}
proc glfwWaitEvents*(): void {.importc.}
proc glfwWaitEventsTimeout*(timeout: float64): void {.importc.}
proc glfwPostEmptyEvent*(): void {.importc.}
proc glfwGetInputMode*(window: GLFWwindow, mode: int32): int32 {.importc.}
proc glfwSetInputMode*(window: GLFWwindow, mode: int32, value: int32): void {.importc.}
proc glfwRawMouseMotionSupported*(): int32 {.importc.}
proc glfwGetKeyName*(key: int32, scancode: int32): cstring {.importc.}
proc glfwGetKeyScancode*(key: int32): int32 {.importc.}
proc glfwGetKey*(window: GLFWwindow, key: int32): int32 {.importc.}
proc glfwGetMouseButton*(window: GLFWwindow, button: int32): int32 {.importc.}
proc glfwGetCursorPos*(window: GLFWwindow, xpos: ptr float64, ypos: ptr float64): void {.importc.}
proc glfwSetCursorPos*(window: GLFWwindow, xpos: float64, ypos: float64): void {.importc.}
proc glfwCreateCursor*(image: ptr GLFWimage, xhot: int32, yhot: int32): GLFWcursor {.importc.}
proc glfwCreateStandardCursor*(shape: int32): GLFWcursor {.importc.}
proc glfwDestroyCursor*(cursor: GLFWcursor): void {.importc.}
proc glfwSetCursor*(window: GLFWwindow, cursor: GLFWcursor): void {.importc.}
proc glfwSetKeyCallback*(window: GLFWwindow, callback: GLFWKeyfun): GLFWKeyfun {.importc.}
proc glfwSetCharCallback*(window: GLFWwindow, callback: GLFWCharfun): GLFWCharfun {.importc.}
proc glfwSetCharModsCallback*(window: GLFWwindow, callback: GLFWCharmodsfun): GLFWCharmodsfun {.importc.}
proc glfwSetMouseButtonCallback*(window: GLFWwindow, callback: GLFWMousebuttonfun): GLFWMousebuttonfun {.importc.}
proc glfwSetCursorPosCallback*(window: GLFWwindow, callback: GLFWCursorposfun): GLFWCursorposfun {.importc.}
proc glfwSetCursorEnterCallback*(window: GLFWwindow, callback: GLFWCursorenterfun): GLFWCursorenterfun {.importc.}
proc glfwSetScrollCallback*(window: GLFWwindow, callback: GLFWScrollfun): GLFWScrollfun {.importc.}
proc glfwSetDropCallback*(window: GLFWwindow, callback: GLFWDropfun): GLFWDropfun {.importc.}
proc glfwJoystickPresent*(jid: int32): int32 {.importc.}
proc glfwGetJoystickAxes*(jid: int32, count: ptr int32): ptr float32 {.importc.}
proc glfwGetJoystickButtons*(jid: int32, count: ptr int32): ptr cuchar {.importc.}
proc glfwGetJoystickHats*(jid: int32, count: ptr int32): ptr cuchar {.importc.}
proc glfwGetJoystickName*(jid: int32): cstring {.importc.}
proc glfwGetJoystickGUID*(jid: int32): cstring {.importc.}
proc glfwSetJoystickUserPointer*(jid: int32, pointer: pointer): void {.importc.}
proc glfwGetJoystickUserPointer*(jid: int32): pointer {.importc.}
proc glfwJoystickIsGamepad*(jid: int32): int32 {.importc.}
proc glfwSetJoystickCallback*(callback: GLFWJoystickfun): GLFWJoystickfun {.importc.}
proc glfwUpdateGamepadMappings*(string: cstring): int32 {.importc.}
proc glfwGetGamepadName*(jid: int32): cstring {.importc.}
proc glfwGetGamepadState*(jid: int32, state: ptr GLFWGamepadstate): int32 {.importc.}
proc glfwSetClipboardString*(window: GLFWwindow, string: cstring): void {.importc.}
proc glfwGetClipboardString*(window: GLFWwindow): cstring {.importc.}
proc glfwGetTime*(): float64 {.importc.}
proc glfwSetTime*(time: float64): void {.importc.}
proc glfwGetTimerValue*(): uint64 {.importc.}
proc glfwGetTimerFrequency*(): uint64 {.importc.}
proc glfwMakeContextCurrent*(window: GLFWwindow): void {.importc.}
proc glfwGetCurrentContext*(): GLFWwindow {.importc.}
proc glfwSwapBuffers*(window: GLFWwindow): void {.importc.}
proc glfwSwapInterval*(interval: int32): void {.importc.}
proc glfwExtensionSupported*(extension: cstring): int32 {.importc.}
proc glfwGetProcAddress*(procname: cstring): GLFWGlproc {.importc.}
proc glfwVulkanSupported*(): bool {.importc.}
proc glfwGetRequiredInstanceExtensions*(count: ptr uint32): cstringArray {.importc.}

when defined(vulkan):
  proc glfwGetInstanceProcAddress*(instance: VkInstance, procname: cstring): GLFWVkproc {.importc.}
  proc glfwGetPhysicalDevicePresentationSupport*(instance: VkInstance, device: VkPhysicalDevice, queuefamily: uint32): int32 {.importc.}
  proc glfwCreateWindowSurface*(instance: VkInstance, window: GLFWwindow, allocator: ptr VkAllocationCallbacks, surface: ptr VkSurfaceKHR): VkResult {.importc.}

{.pop.}