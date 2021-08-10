import std/math

const
  imguiDir = "imgui/"
  imguiHeader = imguiDir & "imgui.h"

when defined windows:
  when defined vcc:
    {.passL: "imm32.lib" .}
  else:
    {.passL: "-limm32" .}

{.passC: "-DIMGUI_DISABLE_OBSOLETE_FUNCTIONS=1".}

{.compile: imguiDir & "imgui.cpp",
  compile: imguiDir & "imgui_tables.cpp",
  compile: imguiDir & "imgui_widgets.cpp",
  compile: imguiDir & "imgui_draw.cpp",
  compile: imguiDir & "imgui_demo.cpp".}

type
  ImGuiKey* = distinct cint
  ImGuiNavInput* = distinct cint
  ImGuiConfigFlags* = distinct cint
  ImGuiBackendFlags* = distinct cint
  ImGuiKeyModFlags* = distinct cint
  ImFontAtlasFlags* = distinct cint
  ImGuiCol* = distinct cint
  ImGuiDir* = distinct cint
  ImDrawListFlags* = distinct cint
  ImGuiWindowFlags* = distinct cint
  ImGuiCond* = distinct cint
  ImGuiItemStatusFlags* = distinct cint
  ImGuiNavLayer* = distinct cint
  ImGuiOldColumnFlags* = distinct cint
  ImGuiLayoutType* = distinct cint
  ImGuiInputSource* = distinct cint
  ImGuiItemFlags* = distinct cint
  ImGuiNextWindowDataFlags* = distinct cint
  ImGuiNextItemDataFlags* = distinct cint
  ImGuiStyleVar* = distinct cint
  ImGuiNavMoveFlags* = distinct cint
  ImGuiNavForward* = distinct cint
  ImGuiViewportFlags* = distinct cint

const
  IM_DRAWLIST_TEX_LINES_WIDTH_MAX* = 63
  IM_DRAWLIST_ARCFAST_TABLE_SIZE* = 48

  ImGuiKey_Tab* = 0.ImGuiKey
  ImGuiKey_LeftArrow* = 1.ImGuiKey
  ImGuiKey_RightArrow* = 2.ImGuiKey
  ImGuiKey_UpArrow* = 3.ImGuiKey
  ImGuiKey_DownArrow* = 4.ImGuiKey
  ImGuiKey_PageUp* = 5.ImGuiKey
  ImGuiKey_PageDown* = 6.ImGuiKey
  ImGuiKey_Home* = 7.ImGuiKey
  ImGuiKey_End* = 8.ImGuiKey
  ImGuiKey_Insert* = 9.ImGuiKey
  ImGuiKey_Delete* = 10.ImGuiKey
  ImGuiKey_Backspace* = 11.ImGuiKey
  ImGuiKey_Space* = 12.ImGuiKey
  ImGuiKey_Enter* = 13.ImGuiKey
  ImGuiKey_Escape* = 14.ImGuiKey
  ImGuiKey_KeyPadEnter* = 15.ImGuiKey
  ImGuiKey_A* = 16.ImGuiKey
  ImGuiKey_C* = 17.ImGuiKey
  ImGuiKey_V* = 18.ImGuiKey
  ImGuiKey_X* = 19.ImGuiKey
  ImGuiKey_Y* = 20.ImGuiKey
  ImGuiKey_Z* = 21.ImGuiKey
  ImGuiKey_COUNT* = 22.ImGuiKey

  ImGuiNavInput_Activate* = 0.ImGuiNavInput
  ImGuiNavInput_Cancel* = 1.ImGuiNavInput
  ImGuiNavInput_Input* = 2.ImGuiNavInput
  ImGuiNavInput_Menu* = 3.ImGuiNavInput
  ImGuiNavInput_DpadLeft* = 4.ImGuiNavInput
  ImGuiNavInput_DpadRight* = 5.ImGuiNavInput
  ImGuiNavInput_DpadUp* = 6.ImGuiNavInput
  ImGuiNavInput_DpadDown* = 7.ImGuiNavInput
  ImGuiNavInput_LStickLeft* = 8.ImGuiNavInput
  ImGuiNavInput_LStickRight* = 9.ImGuiNavInput
  ImGuiNavInput_LStickUp* = 10.ImGuiNavInput
  ImGuiNavInput_LStickDown* = 11.ImGuiNavInput
  ImGuiNavInput_FocusPrev* = 12.ImGuiNavInput
  ImGuiNavInput_FocusNext* = 13.ImGuiNavInput
  ImGuiNavInput_TweakSlow* = 14.ImGuiNavInput
  ImGuiNavInput_TweakFast* = 15.ImGuiNavInput
  ImGuiNavInput_KeyMenu* = 16.ImGuiNavInput
  ImGuiNavInput_KeyLeft* = 17.ImGuiNavInput
  ImGuiNavInput_KeyRight* = 18.ImGuiNavInput
  ImGuiNavInput_KeyUp* = 19.ImGuiNavInput
  ImGuiNavInput_KeyDown* = 20.ImGuiNavInput
  ImGuiNavInput_COUNT* = 21.ImGuiNavInput

  ImGuiConfigFlags_None* = 0.ImGuiConfigFlags
  ImGuiConfigFlags_NavEnableKeyboard* = (1 shl 0).ImGuiConfigFlags
  ImGuiConfigFlags_NavEnableGamepad* = (1 shl 1).ImGuiConfigFlags
  ImGuiConfigFlags_NavEnableSetMousePos* = (1 shl 2).ImGuiConfigFlags
  ImGuiConfigFlags_NavNoCaptureKeyboard* = (1 shl 3).ImGuiConfigFlags
  ImGuiConfigFlags_NoMouse* = (1 shl 4).ImGuiConfigFlags
  ImGuiConfigFlags_NoMouseCursorChange* = (1 shl 5).ImGuiConfigFlags
  ImGuiConfigFlags_IsSRGB* = (1 shl 20).ImGuiConfigFlags
  ImGuiConfigFlags_IsTouchScreen* = (1 shl 21).ImGuiConfigFlags

  ImGuiBackendFlags_None* = 0.ImGuiBackendFlags
  ImGuiBackendFlags_HasGamepad* = (1 shl 0).ImGuiBackendFlags
  ImGuiBackendFlags_HasMouseCursors* = (1 shl 1).ImGuiBackendFlags
  ImGuiBackendFlags_HasSetMousePos* = (1 shl 2).ImGuiBackendFlags
  ImGuiBackendFlags_RendererHasVtxOffset* = (1 shl 3).ImGuiBackendFlags

  ImGuiKeyModFlags_None* = 0.ImGuiKeyModFlags
  ImGuiKeyModFlags_Ctrl* = (1 shl 0).ImGuiKeyModFlags
  ImGuiKeyModFlags_Shift* = (1 shl 1).ImGuiKeyModFlags
  ImGuiKeyModFlags_Alt* = (1 shl 2).ImGuiKeyModFlags
  ImGuiKeyModFlags_Super* = (1 shl 3).ImGuiKeyModFlags

  ImFontAtlasFlags_None* = 0.ImFontAtlasFlags
  ImFontAtlasFlags_NoPowerOfTwoHeight* = (1 shl 0).ImFontAtlasFlags
  ImFontAtlasFlags_NoMouseCursors* = (1 shl 1).ImFontAtlasFlags
  ImFontAtlasFlags_NoBakedLines* = (1 shl 2).ImFontAtlasFlags

  ImGuiCol_Text* = 0.ImGuiCol
  ImGuiCol_TextDisabled* = 1.ImGuiCol
  ImGuiCol_WindowBg* = 2.ImGuiCol
  ImGuiCol_ChildBg* = 3.ImGuiCol
  ImGuiCol_PopupBg* = 4.ImGuiCol
  ImGuiCol_Border* = 5.ImGuiCol
  ImGuiCol_BorderShadow* = 6.ImGuiCol
  ImGuiCol_FrameBg* = 7.ImGuiCol
  ImGuiCol_FrameBgHovered* = 8.ImGuiCol
  ImGuiCol_FrameBgActive* = 9.ImGuiCol
  ImGuiCol_TitleBg* = 10.ImGuiCol
  ImGuiCol_TitleBgActive* = 11.ImGuiCol
  ImGuiCol_TitleBgCollapsed* = 12.ImGuiCol
  ImGuiCol_MenuBarBg* = 13.ImGuiCol
  ImGuiCol_ScrollbarBg* = 14.ImGuiCol
  ImGuiCol_ScrollbarGrab* = 15.ImGuiCol
  ImGuiCol_ScrollbarGrabHovered* = 16.ImGuiCol
  ImGuiCol_ScrollbarGrabActive* = 17.ImGuiCol
  ImGuiCol_CheckMark* = 18.ImGuiCol
  ImGuiCol_SliderGrab* = 19.ImGuiCol
  ImGuiCol_SliderGrabActive* = 20.ImGuiCol
  ImGuiCol_Button* = 21.ImGuiCol
  ImGuiCol_ButtonHovered* = 22.ImGuiCol
  ImGuiCol_ButtonActive* = 23.ImGuiCol
  ImGuiCol_Header* = 24.ImGuiCol
  ImGuiCol_HeaderHovered* = 25.ImGuiCol
  ImGuiCol_HeaderActive* = 26.ImGuiCol
  ImGuiCol_Separator* = 27.ImGuiCol
  ImGuiCol_SeparatorHovered* = 28.ImGuiCol
  ImGuiCol_SeparatorActive* = 29.ImGuiCol
  ImGuiCol_ResizeGrip* = 30.ImGuiCol
  ImGuiCol_ResizeGripHovered* = 31.ImGuiCol
  ImGuiCol_ResizeGripActive* = 32.ImGuiCol
  ImGuiCol_Tab* = 33.ImGuiCol
  ImGuiCol_TabHovered* = 34.ImGuiCol
  ImGuiCol_TabActive* = 35.ImGuiCol
  ImGuiCol_TabUnfocused* = 36.ImGuiCol
  ImGuiCol_TabUnfocusedActive* = 37.ImGuiCol
  ImGuiCol_PlotLines* = 38.ImGuiCol
  ImGuiCol_PlotLinesHovered* = 39.ImGuiCol
  ImGuiCol_PlotHistogram* = 40.ImGuiCol
  ImGuiCol_PlotHistogramHovered* = 41.ImGuiCol
  ImGuiCol_TableHeaderBg* = 42.ImGuiCol
  ImGuiCol_TableBorderStrong* = 43.ImGuiCol
  ImGuiCol_TableBorderLight* = 44.ImGuiCol
  ImGuiCol_TableRowBg* = 45.ImGuiCol
  ImGuiCol_TableRowBgAlt* = 46.ImGuiCol
  ImGuiCol_TextSelectedBg* = 47.ImGuiCol
  ImGuiCol_DragDropTarget* = 48.ImGuiCol
  ImGuiCol_NavHighlight* = 49.ImGuiCol
  ImGuiCol_NavWindowingHighlight* = 50.ImGuiCol
  ImGuiCol_NavWindowingDimBg* = 51.ImGuiCol
  ImGuiCol_ModalWindowDimBg* = 52.ImGuiCol
  ImGuiCol_COUNT* = 53.ImGuiCol

  ImGuiDir_None* = (-1).ImGuiDir
  ImGuiDir_Left* = 0.ImGuiDir
  ImGuiDir_Right* = 1.ImGuiDir
  ImGuiDir_Up* = 2.ImGuiDir
  ImGuiDir_Down* = 3.ImGuiDir
  ImGuiDir_COUNT* = 4.ImGuiDir

  ImDrawListFlags_None* = 0.ImDrawListFlags
  ImDrawListFlags_AntiAliasedLines* = (1 shl 0).ImDrawListFlags
  ImDrawListFlags_AntiAliasedLinesUseTex* = (1 shl 1).ImDrawListFlags
  ImDrawListFlags_AntiAliasedFill* = (1 shl 2).ImDrawListFlags
  ImDrawListFlags_AllowVtxOffset* = (1 shl 3).ImDrawListFlags

  ImGuiWindowFlags_None* = 0.ImGuiWindowFlags
  ImGuiWindowFlags_NoTitleBar* = (1 shl 0).ImGuiWindowFlags
  ImGuiWindowFlags_NoResize* = (1 shl 1).ImGuiWindowFlags
  ImGuiWindowFlags_NoMove* = (1 shl 2).ImGuiWindowFlags
  ImGuiWindowFlags_NoScrollbar* = (1 shl 3).ImGuiWindowFlags
  ImGuiWindowFlags_NoScrollWithMouse* = (1 shl 4).ImGuiWindowFlags
  ImGuiWindowFlags_NoCollapse* = (1 shl 5).ImGuiWindowFlags
  ImGuiWindowFlags_AlwaysAutoResize* = (1 shl 6).ImGuiWindowFlags
  ImGuiWindowFlags_NoBackground* = (1 shl 7).ImGuiWindowFlags
  ImGuiWindowFlags_NoSavedSettings* = (1 shl 8).ImGuiWindowFlags
  ImGuiWindowFlags_NoMouseInputs* = (1 shl 9).ImGuiWindowFlags
  ImGuiWindowFlags_MenuBar* = (1 shl 10).ImGuiWindowFlags
  ImGuiWindowFlags_HorizontalScrollbar* = (1 shl 11).ImGuiWindowFlags
  ImGuiWindowFlags_NoFocusOnAppearing* = (1 shl 12).ImGuiWindowFlags
  ImGuiWindowFlags_NoBringToFrontOnFocus* = (1 shl 13).ImGuiWindowFlags
  ImGuiWindowFlags_AlwaysVerticalScrollbar* = (1 shl 14).ImGuiWindowFlags
  ImGuiWindowFlags_AlwaysHorizontalScrollbar* = (1 shl 15).ImGuiWindowFlags
  ImGuiWindowFlags_AlwaysUseWindowPadding* = (1 shl 16).ImGuiWindowFlags
  ImGuiWindowFlags_NoNavInputs* = (1 shl 18).ImGuiWindowFlags
  ImGuiWindowFlags_NoNavFocus* = (1 shl 19).ImGuiWindowFlags
  ImGuiWindowFlags_UnsavedDocument* = (1 shl 20).ImGuiWindowFlags
  ImGuiWindowFlags_NoNav* = (ImGuiWindowFlags_NoNavInputs.cint or
                             ImGuiWindowFlags_NoNavFocus.cint).ImGuiWindowFlags
  ImGuiWindowFlags_NoDecoration* = (ImGuiWindowFlags_NoTitleBar.cint or
                                    ImGuiWindowFlags_NoResize.cint or
                                    ImGuiWindowFlags_NoScrollbar.cint or
                                    ImGuiWindowFlags_NoCollapse.cint).ImGuiWindowFlags
  ImGuiWindowFlags_NoInputs* = (ImGuiWindowFlags_NoMouseInputs.cint or
                                ImGuiWindowFlags_NoNavInputs.cint or
                                ImGuiWindowFlags_NoNavFocus.cint).ImGuiWindowFlags
  ImGuiWindowFlags_NavFlattened* = (1 shl 23).ImGuiWindowFlags
  ImGuiWindowFlags_ChildWindow* = (1 shl 24).ImGuiWindowFlags
  ImGuiWindowFlags_Tooltip* = (1 shl 25).ImGuiWindowFlags
  ImGuiWindowFlags_Popup* = (1 shl 26).ImGuiWindowFlags
  ImGuiWindowFlags_Modal* = (1 shl 27).ImGuiWindowFlags
  ImGuiWindowFlags_ChildMenu* = (1 shl 28).ImGuiWindowFlags

  ImGuiCond_None* = 0.ImGuiCond
  ImGuiCond_Always* = (1 shl 0).ImGuiCond
  ImGuiCond_Once* = (1 shl 1).ImGuiCond
  ImGuiCond_FirstUseEver* = (1 shl 2).ImGuiCond
  ImGuiCond_Appearing* = (1 shl 3).ImGuiCond

  ImGuiItemStatusFlags_None* = 0.ImGuiItemStatusFlags
  ImGuiItemStatusFlags_HoveredRect* = (1 shl 0).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_HasDisplayRect* = (1 shl 1).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_Edited* = (1 shl 2).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_ToggledSelection* = (1 shl 3).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_ToggledOpen* = (1 shl 4).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_HasDeactivated* = (1 shl 5).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_Deactivated* = (1 shl 6).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_HoveredWindow* = (1 shl 7).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_FocusedByCode* = (1 shl 8).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_FocusedByTabbing* = (1 shl 9).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_Focused* = (ImGuiItemStatusFlags_FocusedByCode.cint or
                                   ImGuiItemStatusFlags_FocusedByTabbing.cint).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_Openable* = (1 shl 20).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_Opened* =(1 shl 21).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_Checkable* = (1 shl 22).ImGuiItemStatusFlags
  ImGuiItemStatusFlags_Checked* = (1 shl 23).ImGuiItemStatusFlags

  ImGuiNavLayer_Main* = 0.ImGuiNavLayer
  ImGuiNavLayer_Menu* = 1.ImGuiNavLayer
  ImGuiNavLayer_COUNT* = 2.ImGuiNavLayer

  ImGuiOldColumnFlags_None* = 0.ImGuiOldColumnFlags
  ImGuiOldColumnFlags_NoBorder* = (1 shl 0).ImGuiOldColumnFlags
  ImGuiOldColumnFlags_NoResize* = (1 shl 1).ImGuiOldColumnFlags
  ImGuiOldColumnFlags_NoPreserveWidths* = (1 shl 2).ImGuiOldColumnFlags
  ImGuiOldColumnFlags_NoForceWithinWindow* = (1 shl 3).ImGuiOldColumnFlags
  ImGuiOldColumnFlags_GrowParentContentsSize* = (1 shl 4).ImGuiOldColumnFlags

  ImGuiLayoutType_Horizontal* = 0.ImGuiLayoutType
  ImGuiLayoutType_Vertical* = 1.ImGuiLayoutType

  ImGuiInputSource_None* = 0.ImGuiInputSource
  ImGuiInputSource_Mouse* = 1.ImGuiInputSource
  ImGuiInputSource_Keyboard* = 2.ImGuiInputSource
  ImGuiInputSource_Gamepad* = 3.ImGuiInputSource
  ImGuiInputSource_Nav* = 4.ImGuiInputSource
  ImGuiInputSource_Clipboard* = 5.ImGuiInputSource
  ImGuiInputSource_COUNT* = 6.ImGuiInputSource

  ImGuiItemFlags_None* = 0.ImGuiItemFlags
  ImGuiItemFlags_NoTabStop* = (1 shl 0).ImGuiItemFlags
  ImGuiItemFlags_ButtonRepeat* = (1 shl 1).ImGuiItemFlags
  ImGuiItemFlags_Disabled* = (1 shl 2).ImGuiItemFlags
  ImGuiItemFlags_NoNav* = (1 shl 3).ImGuiItemFlags
  ImGuiItemFlags_NoNavDefaultFocus* = (1 shl 4).ImGuiItemFlags
  ImGuiItemFlags_SelectableDontClosePopup* = (1 shl 5).ImGuiItemFlags
  ImGuiItemFlags_MixedValue* = (1 shl 6).ImGuiItemFlags
  ImGuiItemFlags_ReadOnly* = (1 shl 7).ImGuiItemFlags

  ImGuiNextWindowDataFlags_None* = 0.ImGuiNextWindowDataFlags
  ImGuiNextWindowDataFlags_HasPos* = (1 shl 0).ImGuiNextWindowDataFlags
  ImGuiNextWindowDataFlags_HasSize* = (1 shl 1).ImGuiNextWindowDataFlags
  ImGuiNextWindowDataFlags_HasContentSize* = (1 shl 2).ImGuiNextWindowDataFlags
  ImGuiNextWindowDataFlags_HasCollapsed* = (1 shl 3).ImGuiNextWindowDataFlags
  ImGuiNextWindowDataFlags_HasSizeConstraint* = (1 shl 4).ImGuiNextWindowDataFlags
  ImGuiNextWindowDataFlags_HasFocus* = (1 shl 5).ImGuiNextWindowDataFlags
  ImGuiNextWindowDataFlags_HasBgAlpha* = (1 shl 6).ImGuiNextWindowDataFlags
  ImGuiNextWindowDataFlags_HasScroll* = (1 shl 7).ImGuiNextWindowDataFlags

  ImGuiNextItemDataFlags_None* = 0.ImGuiNextItemDataFlags
  ImGuiNextItemDataFlags_HasWidth* = (1 shl 0).ImGuiNextItemDataFlags
  ImGuiNextItemDataFlags_HasOpen* = (1 shl 1).ImGuiNextItemDataFlags

  ImGuiStyleVar_Alpha* = 0.ImGuiStyleVar
  ImGuiStyleVar_WindowPadding* = 1.ImGuiStyleVar
  ImGuiStyleVar_WindowRounding* = 2.ImGuiStyleVar
  ImGuiStyleVar_WindowBorderSize* = 3.ImGuiStyleVar
  ImGuiStyleVar_WindowMinSize* = 4.ImGuiStyleVar
  ImGuiStyleVar_WindowTitleAlign* = 5.ImGuiStyleVar
  ImGuiStyleVar_ChildRounding* = 6.ImGuiStyleVar
  ImGuiStyleVar_ChildBorderSize* = 7.ImGuiStyleVar
  ImGuiStyleVar_PopupRounding* = 8.ImGuiStyleVar
  ImGuiStyleVar_PopupBorderSize* = 9.ImGuiStyleVar
  ImGuiStyleVar_FramePadding* = 10.ImGuiStyleVar
  ImGuiStyleVar_FrameRounding* = 11.ImGuiStyleVar
  ImGuiStyleVar_FrameBorderSize* = 12.ImGuiStyleVar
  ImGuiStyleVar_ItemSpacing* = 13.ImGuiStyleVar
  ImGuiStyleVar_ItemInnerSpacing* = 14.ImGuiStyleVar
  ImGuiStyleVar_IndentSpacing* = 15.ImGuiStyleVar
  ImGuiStyleVar_CellPadding* = 16.ImGuiStyleVar
  ImGuiStyleVar_ScrollbarSize* = 17.ImGuiStyleVar
  ImGuiStyleVar_ScrollbarRounding* = 18.ImGuiStyleVar
  ImGuiStyleVar_GrabMinSize* = 19.ImGuiStyleVar
  ImGuiStyleVar_GrabRounding* = 20.ImGuiStyleVar
  ImGuiStyleVar_TabRounding* = 21.ImGuiStyleVar
  ImGuiStyleVar_ButtonTextAlign* = 22.ImGuiStyleVar
  ImGuiStyleVar_SelectableTextAlign* = 23.ImGuiStyleVar
  ImGuiStyleVar_COUNT* = 24.ImGuiStyleVar

  ImGuiNavMoveFlags_None* = 0.ImGuiNavMoveFlags
  ImGuiNavMoveFlags_LoopX* = (1 shl 0).ImGuiNavMoveFlags
  ImGuiNavMoveFlags_LoopY* = (1 shl 1).ImGuiNavMoveFlags
  ImGuiNavMoveFlags_WrapX* = (1 shl 2).ImGuiNavMoveFlags
  ImGuiNavMoveFlags_WrapY* = (1 shl 3).ImGuiNavMoveFlags
  ImGuiNavMoveFlags_AllowCurrentNavId* = (1 shl 4).ImGuiNavMoveFlags
  ImGuiNavMoveFlags_AlsoScoreVisibleSet* = (1 shl 5).ImGuiNavMoveFlags
  ImGuiNavMoveFlags_ScrollToEdge* = (1 shl 6).ImGuiNavMoveFlags

  ImGuiNavForward_None* = 0.ImGuiNavForward
  ImGuiNavForward_ForwardQueued* = 1.ImGuiNavForward
  ImGuiNavForward_ForwardActive* = 2.ImGuiNavForward

  ImGuiViewportFlags_None* = 0.ImGuiViewportFlags
  ImGuiViewportFlags_IsPlatformWindow* = (1 shl 0).ImGuiViewportFlags
  ImGuiViewportFlags_IsPlatformMonitor* = (1 shl 1).ImGuiViewportFlags
  ImGuiViewportFlags_OwnedByApp* = (1 shl 2).ImGuiViewportFlags

type
  ImWchar16* = cushort
  ImWchar32* = cuint

when defined IMGUI_USE_WCHAR32:
  type ImWchar* = ImWchar32
  const IM_UNICODE_CODEPOINT_MAX = 0x10FFFF
else:
  type ImWchar* = ImWchar16
  const IM_UNICODE_CODEPOINT_MAX = 0xFFFF

type
  ImTextureID* = distinct pointer
  ImDrawIdx* = cushort

  ImS8* = cchar
  ImU8* = cuchar
  ImS16* = cshort
  ImU16* = cushort
  ImS32* = cint
  ImU32* = cuint
  ImS64* = int64
  ImU64* = uint64
  ImGuiID* = cuint

  ImVec1* = object
    x*: cfloat

  ImVec2* = object
    x*, y*: cfloat

  ImVec2ih* = object
    x*, y*: cshort

  ImVec4* = object
    x*, y*, z*, w*: cfloat

  ImRect* = object
    Min: ImVec2
    Max: ImVec2

  ImVector*[T] = object
    Size*, Capacity*: cint
    Data*: UncheckedArray[T]

  ImFontGlyph* = object
    Colored*, Visible*, Codepoint*: cuint
    AdvanceX*: cfloat
    X0*, Y0*, X1*, Y1*: cfloat
    U0*, V0*, U1*, V1*: cfloat

  ImFontConfig* = object
    FontData*: pointer
    FontDataSize*: cint
    FontDataOwnedByAtlas*: bool
    FontNo*: cint
    SizePixels*: cfloat
    OversampleH*, OversampleV*: cint
    PixelSnapH*: bool
    GlyphExtraSpacing*: ImVec2
    GlyphOffset*: ImVec2
    GlyphRanges*: ptr ImWchar
    GlyphMinAdvanceX*, GlyphMaxAdvanceX*: cfloat
    MergeMode*: bool
    FontBuilderFlags*: cuint
    RasterizerMultiply*: cfloat
    EllipsisChar*: ImWchar
    Name*: array[40, cchar]
    DstFont*: ptr ImFont

  ImFont* = object
    IndexAdvanceX*: ImVector[cfloat]
    FallbackAdvanceX*: cfloat
    FontSize*: cfloat
    IndexLookup*: ImVector[ImWchar]
    Glyphs*: ImVector[ImFontGlyph]
    FallbackGlyph*: ptr ImFontGlyph
    ContainerAtlas*: ptr ImFontAtlas
    ConfigData*: ptr ImFontConfig
    ConfigDataCount*: cshort
    FallbackChar*: ImWchar
    EllipsisChar*: ImWchar
    DirtyLookupTables*: bool
    Scale*: cfloat
    Ascent*, Descent*: cfloat
    MetricsTotalSurface*: cint
    Used4kPagesMap*: array[(IM_UNICODE_CODEPOINT_MAX + 1).floorDiv(4096).floorDiv(8), ImU8]

  ImFontAtlasCustomRect* = object
    Width*, Height*: cushort
    X*, Y*: cushort
    GlyphID*: cuint
    GlyphAdvanceX*: cfloat
    GlyphOffset*: ImVec2
    Font*: ptr ImFont

  ImFontBuilderIO* = object
    FontBuilder_Build*: proc(atlas: ptr ImFontAtlas): bool {.cdecl, varargs.}

  ImFontAtlas* = object
    Flags*: ImFontAtlasFlags
    TexID*: ImTextureID
    TexDesiredWidth*: cint
    TexGlyphPadding*: cint
    Locked*: bool
    TexPixelsUseColors*: bool
    TexPixelsAlpha8*: ptr cuchar
    TexPixelsRGBA32*: ptr cuint
    TexWidth*, TexHeight*: int32
    TexUvScale*: ImVec2
    TexUvWhitePixel*: ImVec2
    Fonts*: ImVector[ptr ImFont]
    CustomRects*: ImVector[ImFontAtlasCustomRect]
    ConfigData*: ImVector[ImFontConfig]
    TexUvLines*: array[IM_DRAWLIST_TEX_LINES_WIDTH_MAX + 1, ImVec4]
    FontBuilderIO*: ptr ImFontBuilderIO
    FontBuilderFlags*: cuint
    PackIdMouseCursors*: cint
    PackIdLines*: cint

  ImGuiIO* = object
    ConfigFlags*: ImGuiConfigFlags
    BackendFlags*: ImGuiBackendFlags
    DisplaySize*: ImVec2
    DeltaTime*: cfloat
    IniSavingRate*: cfloat
    IniFilename*: cstring
    LogFilename*: cstring
    MouseDoubleClickTime*: cfloat
    MouseDoubleClickMaxDist*: cfloat
    MouseDragThreshold*: cfloat
    KeyMap*: array[ImGuiKey_COUNT, cint]
    KeyRepeatDelay*: cfloat
    KeyRepeatRate*: cfloat
    UserData*: pointer
    Fonts*: ptr ImFontAtlas
    FontGlobalScale*: cfloat
    FontAllowUserScaling*: bool
    FontDefault*: ptr ImFont
    DisplayFramebufferScale*: ImVec2
    MouseDrawCursor*: bool
    ConfigMacOSXBehaviors*: bool
    ConfigInputTextCursorBlink*: bool
    ConfigDragClickToInputText*: bool
    ConfigWindowsResizeFromEdges*: bool
    ConfigWindowsMoveFromTitleBarOnly*: bool
    ConfigMemoryCompactTimer*: cfloat
    BackendPlatformName*: cstring
    BackendRendererName*: cstring
    BackendPlatformUserData*: pointer
    BackendRendererUserData*: pointer
    BackendLanguageUserData*: pointer
    GetClipboardTextFn: proc(user_data: pointer): cstring
    SetClipboardTextFn: proc(user_data: pointer, text: cstring)
    ClipboardUserData*: pointer
    ImeSetInputScreenPosFn: proc(x, y: cint)
    ImeWindowHandle*: pointer
    MousePos*: ImVec2
    MouseDown*: array[5, bool]
    MouseWheel*: cfloat
    MouseWheelH*: cfloat
    KeyCtrl*: bool
    KeyShift*: bool
    KeyAlt*: bool
    KeySuper*: bool
    KeysDown*: array[512, bool]
    NavInputs*: array[ImGuiNavInput_COUNT, cfloat]
    WantCaptureMouse*: bool
    WantCaptureKeyboard*: bool
    WantTextInput*: bool
    WantSetMousePos*: bool
    WantSaveIniSettings*: bool
    NavActive*: bool
    NavVisible*: bool
    Framerate*: cfloat
    MetricsRenderVertices*: cint
    MetricsRenderIndices*: cint
    MetricsRenderWindows*: cint
    MetricsActiveWindows*: cint
    MetricsActiveAllocations*: cint
    MouseDelta*: ImVec2
    KeyMods*: ImGuiKeyModFlags
    MousePosPrev*: ImVec2
    MouseClickedPos*: array[5, ImVec2]
    MouseClickedTime*: array[5, cdouble]
    MouseClicked*: array[5, bool]
    MouseDoubleClicked*: array[5, bool]
    MouseReleased*: array[5, bool]
    MouseDownOwned*: array[5, bool]
    MouseDownWasDoubleClick*: array[5, bool]
    MouseDownDuration*: array[5, cfloat]
    MouseDownDurationPrev*: array[5, cfloat]
    MouseDragMaxDistanceAbs*: array[5, ImVec2]
    MouseDragMaxDistanceSqr*: array[5, cfloat]
    KeysDownDuration*: array[512, cfloat]
    KeysDownDurationPrev*: array[512, cfloat]
    NavInputsDownDuration*: array[ImGuiNavInput_COUNT, cfloat]
    NavInputsDownDurationPrev*: array[ImGuiNavInput_COUNT, cfloat]
    PenPressure*: cfloat
    InputQueueSurrogate*: ImWchar16
    InputQueueCharacters*: ImVector[ImWchar]

  ImGuiStyle* = object
    Alpha*: cfloat
    WindowPadding*: ImVec2
    WindowRounding*: cfloat
    WindowBorderSize*: cfloat
    WindowMinSize*: ImVec2
    WindowTitleAlign*: ImVec2
    WindowMenuButtonPosition*: ImGuiDir
    ChildRounding*: cfloat
    ChildBorderSize*: cfloat
    PopupRounding*: cfloat
    PopupBorderSize*: cfloat
    FramePadding*: ImVec2
    FrameRounding*: cfloat
    FrameBorderSize*: cfloat
    ItemSpacing*: ImVec2
    ItemInnerSpacing*: ImVec2
    CellPadding*: ImVec2
    TouchExtraPadding*: ImVec2
    IndentSpacing*: cfloat
    ColumnsMinSpacing*: cfloat
    ScrollbarSize*: cfloat
    ScrollbarRounding*: cfloat
    GrabMinSize*: cfloat
    GrabRounding*: cfloat
    LogSliderDeadzone*: cfloat
    TabRounding*: cfloat
    TabBorderSize*: cfloat
    TabMinWidthForCloseButton*: cfloat
    ColorButtonPosition*: ImGuiDir
    ButtonTextAlign*: ImVec2
    SelectableTextAlign*: ImVec2
    DisplayWindowPadding*: ImVec2
    DisplaySafeAreaPadding*: ImVec2
    MouseCursorScale*: cfloat
    AntiAliasedLines*: bool
    AntiAliasedLinesUseTex*: bool
    AntiAliasedFill*: bool
    CurveTessellationTol*: cfloat
    CircleTessellationMaxError*: cfloat
    Colors*: array[ImGuiCol_COUNT, ImVec4]

  ImDrawListSharedData* = object
    TexUvWhitePixel*: ImVec2
    Font*: ptr ImFont
    FontSize*: cfloat
    CurveTessellationTol*: cfloat
    CircleSegmentMaxError*: cfloat
    ClipRectFullscreen*: ImVec4
    InitialFlags*: ImDrawListFlags
    ArcFastVtx*: array[IM_DRAWLIST_ARCFAST_TABLE_SIZE, ImVec2]
    ArcFastRadiusCutoff*: cfloat
    CircleSegmentCounts*: array[64, ImU8]
    TexUvLines*: UncheckedArray[ImVec4]

  ImGuiMenuColumns* = object
    Spacing*: cfloat
    Width*, NextWidth*: cfloat
    Pos*, NextWidths*: array[3, cfloat]

  ImGuiStoragePairData* {.union.} = object
    val_i*: cint
    val_f*: cfloat
    val_p*: pointer

  ImGuiStoragePair* = object
    Key*: ImGuiID
    data*: ImGuiStoragePairData

  ImGuiStorage* = object
    Data*: ImVector[ImGuiStoragePair]

  ImDrawVert* = object
    pos*: ImVec2
    uv*: ImVec2
    col*: ImU32

  ImDrawCmdHeader* = object
    ClipRect*: ImVec4
    TextureId*: ImTextureID
    VtxOffset*: cuint

  ImDrawList* = object
    CmdBuffer*: ImVector[ImDrawCmd]
    IdxBuffer*: ImVector[ImDrawIdx]
    VtxBuffer*: ImVector[ImDrawVert]
    Flags*: ImDrawListFlags
    VtxCurrentIdx* {.importc: "_VtxCurrentIdx".}: cuint
    Data* {.importc: "_Data".}: UncheckedArray[ImDrawListSharedData]
    OwnerName* {.importc: "_OwnerName".}: cstring
    VtxWritePtr* {.importc: "_VtxWritePtr".}: ptr ImDrawVert
    IdxWritePtr* {.importc: "_IdxWritePtr".}: ptr ImDrawIdx
    ClipRectStack* {.importc: "_ClipRectStack".}: ImVector[ImVec4]
    TextureIdStack* {.importc: "_TextureIdStack".}: ImVector[ImTextureID]
    Path* {.importc: "_Path".}: ImVector[ImVec2]
    CmdHeader* {.importc: "_CmdHeader".}: ImDrawCmdHeader
    Splitter* {.importc: "_Splitter".}: ImDrawListSplitter
    FringeScale* {.importc: "_FringeScale".}: cfloat

  ImDrawCallback* = proc(parent_list: UncheckedArray[ImDrawList], cmd: UncheckedArray[ImDrawCmd]) {.cdecl.}

  ImDrawCmd* = object
    ClipRect*: ImVec4
    TextureId*: ImTextureID
    VtxOffset*: cuint
    IdxOffset*: cuint
    ElemCount*: cuint
    UserCallback*: ImDrawCallback
    UserCallbackData*: pointer

  ImDrawChannel* = object
    CmdBuffer*: ImVector[ImDrawCmd]
    IdxBuffer*: ImVector[ImDrawIdx]

  ImDrawListSplitter* = object
    Current*: cint
    Count*: cint
    Channels*: ImVector[ImDrawChannel]

  ImGuiOldColumns* = object
    ID*: ImGuiID
    Flags*: ImGuiOldColumnFlags
    IsFirstFrame*: bool
    IsBeingResized*: bool
    Current*: cint
    Count*: cint
    OffMinX, OffMaxX*: cfloat
    LineMinY, LineMaxY*: cfloat
    HostCursorPosY*: cfloat
    HostCursorMaxPosX*: cfloat
    HostInitialClipRect*: ImRect
    HostBackupClipRect*: ImRect
    HostBackupParentWorkRect*: ImRect
    Columns*: ImVector[ImGuiOldColumnData]
    Splitter*: ImDrawListSplitter

  ImGuiOldColumnData* = object
    OffsetNorm*: cfloat
    OffsetNormBeforeResize*: cfloat
    Flags*: ImGuiOldColumnFlags
    ClipRect*: ImRect

  ImGuiStackSizes* = object
    SizeOfIDStack*: cshort
    SizeOfColorStack*: cshort
    SizeOfStyleVarStack*: cshort
    SizeOfFontStack*: cshort
    SizeOfFocusScopeStack*: cshort
    SizeOfGroupStack*: cshort
    SizeOfBeginPopupStack*: cshort

  ImGuiSizeCallbackData* = object
    UserData*: pointer
    Pos*: ImVec2
    CurrentSize*: ImVec2
    DesiredSize*: ImVec2

  ImGuiSizeCallback* = proc(data: ptr ImGuiSizeCallbackData)

  ImGuiWindowTempData* = object
    CursorPos*: ImVec2
    CursorPosPrevLine*: ImVec2
    CursorStartPos*: ImVec2
    CursorMaxPos*: ImVec2
    IdealMaxPos*: ImVec2
    CurrLineSize*: ImVec2
    PrevLineSize*: ImVec2
    CurrLineTextBaseOffset*: cfloat
    PrevLineTextBaseOffset*: cfloat
    Indent*: ImVec1
    ColumnsOffset*: ImVec1
    GroupOffset*: ImVec1
    LastItemId*: ImGuiID
    LastItemStatusFlags*: ImGuiItemStatusFlags
    LastItemRect*: ImRect
    LastItemDisplayRect*: ImRect
    NavLayerCurrent*: ImGuiNavLayer
    NavLayersActiveMask*: cshort
    NavLayersActiveMaskNext*: cshort
    NavFocusScopeIdCurrent*: ImGuiID
    NavHideHighlightOneFrame*: bool
    NavHasScroll*: bool
    MenuBarAppending*: bool
    MenuBarOffset*: ImVec2
    MenuColumns*: ImGuiMenuColumns
    TreeDepth*: cint
    TreeJumpToParentOnPopMask*: ImU32
    ChildWindows*: ImVector[ptr ImGuiWindow]
    StateStorage*: ptr ImGuiStorage
    CurrentColumns*: ptr ImGuiOldColumns
    CurrentTableIdx*: cint
    LayoutType*: ImGuiLayoutType
    ParentLayoutType*: ImGuiLayoutType
    FocusCounterRegular*: cint
    FocusCounterTabStop*: cint
    ItemWidth*: cfloat
    TextWrapPos*: cfloat
    ItemWidthStack*: ImVector[cfloat]
    TextWrapPosStack*: ImVector[cfloat]
    StackSizesOnBegin*: ImGuiStackSizes

  ImGuiWindow = object
    Name*: cstring
    ID*: ImGuiID
    Flags*: ImGuiWindowFlags
    Pos*: ImVec2
    Size*: ImVec2
    SizeFull*: ImVec2
    ContentSize*: ImVec2
    ContentSizeIdeal*: ImVec2
    ContentSizeExplicit*: ImVec2
    WindowPadding*: ImVec2
    WindowRounding*: cfloat
    WindowBorderSize*: cfloat
    NameBufLen*: cint
    MoveId*: ImGuiID
    ChildId*: ImGuiID
    Scroll*: ImVec2
    ScrollMax*: ImVec2
    ScrollTarget*: ImVec2
    ScrollTargetCenterRatio*: ImVec2
    ScrollTargetEdgeSnapDist*: ImVec2
    ScrollbarSizes*: ImVec2
    ScrollbarX, ScrollbarY*: bool
    Active*: bool
    WasActive*: bool
    WriteAccessed*: bool
    Collapsed*: bool
    WantCollapseToggle*: bool
    SkipItems*: bool
    Appearing*: bool
    Hidden*: bool
    IsFallbackWindow*: bool
    HasCloseButton*: bool
    ResizeBorderHeld*: cchar
    BeginCount*: cshort
    BeginOrderWithinParent*: cshort
    BeginOrderWithinContext*: cshort
    FocusOrder*: cshort
    PopupId*: ImGuiID
    AutoFitFramesX, AutoFitFramesY*: ImS8
    AutoFitChildAxises*: ImS8
    AutoFitOnlyGrows*: bool
    AutoPosLastDirection*: ImGuiDir
    HiddenFramesCanSkipItems*: ImS8
    HiddenFramesCannotSkipItems*: ImS8
    HiddenFramesForRenderOnly*: ImS8
    DisableInputsFrames*: ImS8
    SetWindowPosAllowFlags*: ImGuiCond
    SetWindowSizeAllowFlags*: ImGuiCond
    SetWindowCollapsedAllowFlags*: ImGuiCond
    SetWindowPosVal*: ImVec2
    SetWindowPosPivot*: ImVec2
    IDStack*: ImVector[ImGuiID]
    DC*: ImGuiWindowTempData
    OuterRectClipped*: ImRect
    InnerRect*: ImRect
    InnerClipRect*: ImRect
    WorkRect*: ImRect
    ParentWorkRect*: ImRect
    ClipRect*: ImRect
    ContentRegionRect*: ImRect
    HitTestHoleSize*: ImVec2ih
    HitTestHoleOffset*: ImVec2ih
    LastFrameActive*: cint
    LastTimeActive*: cfloat
    ItemWidthDefault*: cfloat
    StateStorage*: ImGuiStorage
    ColumnsStorage*: ImVector[ImGuiOldColumns]
    FontWindowScale*: cfloat
    SettingsOffset*: cint
    DrawList*: ptr ImDrawList
    DrawListInst*: ImDrawList
    ParentWindow*: ptr ImGuiWindow
    RootWindow*: ptr ImGuiWindow
    RootWindowForTitleBarHighlight*: ptr ImGuiWindow
    RootWindowForNav*: ptr ImGuiWindow
    NavLastChildNavWindow*: ptr ImGuiWindow
    NavLastIds*: array[ImGuiNavLayer_COUNT, ImGuiID]
    NavRectRel*: array[ImGuiNavLayer_COUNT, ImRect]
    MemoryDrawListIdxCapacity*: cint
    MemoryDrawListVtxCapacity*: cint
    MemoryCompacted*: bool

  ImGuiNextWindowData* = object
    Flags*: ImGuiNextWindowDataFlags
    PosCond*: ImGuiCond
    SizeCond*: ImGuiCond
    CollapsedCond*: ImGuiCond
    PosVal*: ImVec2
    PosPivotVal*: ImVec2
    SizeVal*: ImVec2
    ContentSizeVal*: ImVec2
    ScrollVal*: ImVec2
    CollapsedVal*: bool
    SizeConstraintRect*: ImRect
    SizeCallback*: ImGuiSizeCallback
    SizeCallbackUserData*: pointer
    BgAlphaVal*: cfloat
    MenuBarOffsetMinVal*: ImVec2

  ImGuiNextItemData* = object
    Flags*: ImGuiNextItemDataFlags
    Width*: cfloat
    FocusScopeId*: ImGuiID
    OpenCond*: ImGuiCond
    OpenVal*: bool

  ImGuiColorMod* = object
    Col*: ImGuiCol
    BackupValue*: ImVec4

  ImGuiStyleModBackup* {.union.} = object
    BackupInt*: cint
    BackupFloat*: cfloat

  ImGuiStyleMod* = object
    VarIdx*: ImGuiStyleVar
    Backup*: ImGuiStyleModBackup

  ImGuiGroupData* = object
    WindowID*: ImGuiID
    BackupCursorPos*: ImVec2
    BackupCursorMaxPos*: ImVec2
    BackupIndent*: ImVec1
    BackupGroupOffset*: ImVec1
    BackupCurrLineSize*: ImVec2
    BackupCurrLineTextBaseOffset*: cfloat
    BackupActiveIdIsAlive*: ImGuiID
    BackupActiveIdPreviousFrameIsAlive*: bool
    BackupHoveredIdIsAlive*: bool
    EmitItem*: bool

  ImGuiPopupData* = object
    PopupId*: ImGuiID
    Window*: ptr ImGuiWindow
    SourceWindow*: ptr ImGuiWindow
    OpenFrameCount*: cint
    OpenParentId*: ImGuiID
    OpenPopupPos*: ImVec2
    OpenMousePos*: ImVec2

  ImGuiNavItemData* = object
    Window*: ptr ImGuiWindow
    ID*: ImGuiID
    FocusScopeId*: ImGuiID
    RectRel*: ImRect
    DistBox*: cfloat
    DistCenter*: cfloat
    DistAxial*: cfloat

  ImGuiViewport* = object
    Flags*: ImGuiViewportFlags
    Pos*: ImVec2
    Size*: ImVec2
    WorkPos*: ImVec2
    WorkSize*: ImVec2

  ImDrawData* = object
    Valid*: bool
    CmdListsCount*: cint
    TotalIdxCount*: cint
    TotalVtxCount*: cint
    CmdLists*: UncheckedArray[ptr ImDrawList]
    DisplayPos*: ImVec2
    DisplaySize*: ImVec2
    FramebufferScale*: ImVec2

  ImDrawDataBuilder* = object
    Layers*: array[2, ImVector[ptr ImDrawList]]

  ImGuiViewportP* = object
    Viewport* {.importc: "_viewport".}: ImGuiViewport
    DrawListsLastFrame*: array[2, cint]
    DrawLists*: array[2, ptr ImDrawList]
    DrawDataP*: ImDrawData
    DrawDataBuilder*: ImDrawDataBuilder
    WorkOffsetMin*: ImVec2
    WorkOffsetMax*: ImVec2
    CurrWorkOffsetMin*: ImVec2
    CurrWorkOffsetMax*: ImVec2

  ImGuiContext* = object
    Initialized*: bool
    FontAtlasOwnedByContext*: bool
    IO*: ImGuiIO
    Style*: ImGuiStyle
    Font*: ptr ImFont
    FontSize*: cfloat
    FontBaseSize*: cfloat
    DrawListSharedData*: ImDrawListSharedData
    Time*: cdouble
    FrameCount*: cint
    FrameCountEnded*: cint
    FrameCountRendered*: cint
    WithinFrameScope*: bool
    WithinFrameScopeWithImplicitWindow*: bool
    WithinEndChild*: bool
    GcCompactAll*: bool
    TestEngineHookItems*: bool
    TestEngineHookIdInfo*: ImGuiID
    TestEngine*: pointer
    Windows*: ImVector[ptr ImGuiWindow]
    WindowsFocusOrder*: ImVector[ptr ImGuiWindow]
    WindowsTempSortBuffer*: ImVector[ptr ImGuiWindow]
    CurrentWindowStack*: ImVector[ptr ImGuiWindow]
    WindowsById*: ImGuiStorage
    WindowsActiveCount*: cint
    WindowsHoverPadding*: ImVec2
    CurrentWindow*: ptr ImGuiWindow
    HoveredWindow*: ptr ImGuiWindow
    HoveredWindowUnderMovingWindow*: ptr ImGuiWindow
    MovingWindow*: ptr ImGuiWindow
    WheelingWindow*: ptr ImGuiWindow
    WheelingWindowRefMousePos*: ImVec2
    WheelingWindowTimer*: cfloat
    CurrentItemFlags*: ImGuiItemFlags
    HoveredId*: ImGuiID
    HoveredIdPreviousFrame*: ImGuiID
    HoveredIdAllowOverlap*: bool
    HoveredIdUsingMouseWheel*: bool
    HoveredIdPreviousFrameUsingMouseWheel*: bool
    HoveredIdDisabled*: bool
    HoveredIdTimer*: cfloat
    HoveredIdNotActiveTimer*: cfloat
    ActiveId*: ImGuiID
    ActiveIdIsAlive*: ImGuiID
    ActiveIdTimer*: cfloat
    ActiveIdIsJustActivated*: bool
    ActiveIdAllowOverlap*: bool
    ActiveIdNoClearOnFocusLoss*: bool
    ActiveIdHasBeenPressedBefore*: bool
    ActiveIdHasBeenEditedBefore*: bool
    ActiveIdHasBeenEditedThisFrame*: bool
    ActiveIdUsingMouseWheel*: bool
    ActiveIdUsingNavDirMask*: ImU32
    ActiveIdUsingNavInputMask*: ImU32
    ActiveIdUsingKeyInputMask*: ImU64
    ActiveIdClickOffset*: ImVec2
    ActiveIdWindow*: ptr ImGuiWindow
    ActiveIdSource*: ImGuiInputSource
    ActiveIdMouseButton*: cint
    ActiveIdPreviousFrame*: ImGuiID
    ActiveIdPreviousFrameIsAlive*: bool
    ActiveIdPreviousFrameHasBeenEditedBefore*: bool
    ActiveIdPreviousFrameWindow*: ptr ImGuiWindow
    LastActiveId*: ImGuiID
    LastActiveIdTimer*: cfloat
    NextWindowData*: ImGuiNextWindowData
    NextItemData*: ImGuiNextItemData
    ColorStack*: ImVector[ImGuiColorMod]
    StyleVarStack*: ImVector[ImGuiStyleMod]
    FontStack*: ImVector[ptr ImFont]
    FocusScopeStack*: ImVector[ImGuiID]
    ItemFlagsStack*: ImVector[ImGuiItemFlags]
    GroupStack*: ImVector[ImGuiGroupData]
    OpenPopupStack*: ImVector[ImGuiPopupData]
    BeginPopupStack*: ImVector[ImGuiPopupData]
    Viewports*: ImVector[ptr ImGuiViewportP]
    NavWindow*: ptr ImGuiWindow
    NavId*: ImGuiID
    NavFocusScopeId*: ImGuiID
    NavActivateId*: ImGuiID
    NavActivateDownId*: ImGuiID
    NavActivatePressedId*: ImGuiID
    NavInputId*: ImGuiID
    NavJustTabbedId*: ImGuiID
    NavJustMovedToId*: ImGuiID
    NavJustMovedToFocusScopeId*: ImGuiID
    NavJustMovedToKeyMods*: ImGuiKeyModFlags
    NavNextActivateId*: ImGuiID
    NavInputSource*: ImGuiInputSource
    NavScoringRect*: ImRect
    NavScoringCount*: cint
    NavLayer*: ImGuiNavLayer
    NavIdTabCounter*: cint
    NavIdIsAlive*: bool
    NavMousePosDirty*: bool
    NavDisableHighlight*: bool
    NavDisableMouseHover*: bool
    NavAnyRequest*: bool
    NavInitRequest*: bool
    NavInitRequestFromMove*: bool
    NavInitResultId*: ImGuiID
    NavInitResultRectRel*: ImRect
    NavMoveRequest*: bool
    NavMoveRequestFlags*: ImGuiNavMoveFlags
    NavMoveRequestForward*: ImGuiNavForward
    NavMoveRequestKeyMods*: ImGuiKeyModFlags
    NavMoveDir, NavMoveDirLast*: ImGuiDir
    NavMoveClipDir*: ImGuiDir
    NavMoveResultLocal*: ImGuiNavItemData
    NavMoveResultLocalVisibleSet*: ImGuiNavItemData
    NavMoveResultOther*: ImGuiNavItemData
    NavWrapRequestWindow*: ptr ImGuiWindow
    NavWrapRequestFlags*: ImGuiNavMoveFlags
    NavWindowingTarget*: ptr ImGuiWindow
    NavWindowingTargetAnim*: ptr ImGuiWindow
    NavWindowingListWindow*: ptr ImGuiWindow
    NavWindowingTimer*: cfloat
    NavWindowingHighlightAlpha*: cfloat
    NavWindowingToggleLayer*: bool
    TabFocusRequestCurrWindow*: ptr ImGuiWindow
    TabFocusRequestNextWindow*: ptr ImGuiWindow
    TabFocusRequestCurrCounterRegular*: cint
    TabFocusRequestCurrCounterTabStop*: cint
    TabFocusRequestNextCounterRegular*: cint
    TabFocusRequestNextCounterTabStop*: cint
    TabFocusPressed*: bool
    DimBgRatio*: cfloat
    MouseCursor*: ImGuiMouseCursor
    DragDropActive*: bool
    DragDropWithinSource*: bool
    DragDropWithinTarget*: bool
    DragDropSourceFlags*: ImGuiDragDropFlags
    DragDropSourceFrameCount*: cint
    DragDropMouseButton*: cint
    DragDropPayload*: ImGuiPayload
    DragDropTargetRect*: ImRect
    DragDropTargetId*: ImGuiID
    DragDropAcceptFlags*: ImGuiDragDropFlags
    DragDropAcceptIdCurrRectSurface*: cfloat
    DragDropAcceptIdCurr*: ImGuiID
    DragDropAcceptIdPrev*: ImGuiID
    DragDropAcceptFrameCount*: cint
    DragDropHoldJustPressedId*: ImGuiID
    DragDropPayloadBufHeap*: ImVector[cuchar]
    DragDropPayloadBufLocal*: array[16, cuchar]
    CurrentTable*: ptr ImGuiTable
    CurrentTableStackIdx*: cint
    Tables*: ImPool[ImGuiTable]
    TablesTempDataStack*: ImVector[ImGuiTableTempData]
    TablesLastTimeActive*: ImVector[cfloat]
    DrawChannelsTempMergeBuffer*: ImVector[ImDrawChannel]
    CurrentTabBar*: ptr ImGuiTabBar
    TabBars*: ImPool[ImGuiTabBar]
    CurrentTabBarStack*: ImVector[ImGuiPtrOrIndex]
    ShrinkWidthBuffer*: ImVector[ImGuiShrinkWidthItem]
    LastValidMousePos*: ImVec2
    InputTextState*: ImGuiInputTextState
    InputTextPasswordFont*: ImFont
    TempInputId*: ImGuiID
    ColorEditOptions*: ImGuiColorEditFlags
    ColorEditLastHue*: cfloat
    ColorEditLastSat*: cfloat
    ColorEditLastColor*: array[3, cfloat]
    ColorPickerRef*: ImVec4
    SliderCurrentAccum*: cfloat
    SliderCurrentAccumDirty*: bool
    DragCurrentAccumDirty*: bool
    DragCurrentAccum*: cfloat
    DragSpeedDefaultRatio*: cfloat
    ScrollbarClickDeltaToGrabCenter*: cfloat
    TooltipOverrideCount*: cint
    TooltipSlowDelay*: cfloat
    ClipboardHandlerData*: ImVector[cchar]
    MenusIdSubmittedThisFrame*: ImVector[ImGuiID]
    PlatformImePos*: ImVec2
    PlatformImeLastPos*: ImVec2
    PlatformLocaleDecimalPoint*: cchar
    SettingsLoaded*: bool
    SettingsDirtyTimer*: cfloat
    SettingsIniData*: ImGuiTextBuffer
    SettingsHandlers*: ImVector[ImGuiSettingsHandler]
    SettingsWindows*: ImChunkStream[ImGuiWindowSettings]
    SettingsTables*: ImChunkStream[ImGuiTableSettings]
    Hooks*: ImVector[ImGuiContextHook]
    HookIdNext*: ImGuiID
    LogEnabled*: bool
    LogType*: ImGuiLogType
    LogFile*: ImFileHandle
    LogBuffer*: ImGuiTextBuffer
    LogNextPrefix*: cstring
    LogNextSuffix*: cstring
    LogLinePosY*: cfloat
    LogLineFirstItem*: bool
    LogDepthRef*: cint
    LogDepthToExpand*: cint
    LogDepthToExpandDefault*: cint
    DebugItemPickerActive*: bool
    DebugItemPickerBreakId*: ImGuiID
    DebugMetricsConfig*: ImGuiMetricsConfig
    FramerateSecPerFrame*: array[120, cfloat]
    FramerateSecPerFrameIdx*: cint
    FramerateSecPerFrameCount*: cint
    FramerateSecPerFrameAccum*: cfloat
    WantCaptureMouseNextFrame*: cint
    WantCaptureKeyboardNextFrame*: cint
    WantTextInputNextFrame*: cint
    TempBuffer*: array[1024 * 3 + 1, cchar]

proc CreateContext*(shared_font_atlas: ptr ImFontAtlas = nil): ptr ImGuiContext {.importc, header: imguiHeader.}