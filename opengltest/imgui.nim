const
  FLT_MIN = 1.175494350822288e-38
  FLT_MAX = 3.402823e38
  IM_DRAWLIST_TEX_LINES_WIDTH_MAX* = 63
  IM_DRAWLIST_ARCFAST_TABLE_SIZE* = 48
  IM_DRAWLIST_ARCFAST_SAMPLE_MAX* = IM_DRAWLIST_ARCFAST_TABLE_SIZE
  STB_TEXTEDIT_UNDOSTATECOUNT* = 99
  STB_TEXTEDIT_UNDOCHARCOUNT* = 999

type
  STB_TEXTEDIT_CHARTYPE* = cint
  STB_TEXTEDIT_POSITIONTYPE* = cint

type
  ImWchar16* = cushort
  ImWchar32* = cuint

const
  IM_UNICODE_CODEPOINT_INVALID* = 0xFFFD

when defined(IMGUI_USE_WCHAR32):
  const
    IM_UNICODE_CODEPOINT_MAX* = 0x10FFFF
  type ImWchar* = ImWchar32
else:
  const
    IM_UNICODE_CODEPOINT_MAX* = 0xFFFF
  type ImWchar* = ImWchar16

type
  ImGuiItemFlags* = enum
    ImGuiItemFlags_None = 0,
    ImGuiItemFlags_NoTabStop = 1 shl 0,
    ImGuiItemFlags_ButtonRepeat = 1 shl 1,
    ImGuiItemFlags_Disabled = 1 shl 2,
    ImGuiItemFlags_NoNav = 1 shl 3,
    ImGuiItemFlags_NoNavDefaultFocus = 1 shl 4,
    ImGuiItemFlags_SelectableDontClosePopup = 1 shl 5,
    ImGuiItemFlags_MixedValue = 1 shl 6,
    ImGuiItemFlags_ReadOnly = 1 shl 7,

  ImGuiItemAddFlags* = enum
    ImGuiItemAddFlags_None = 0,
    ImGuiItemAddFlags_Focusable = 1 shl 0,

  ImGuiItemStatusFlags* = enum
    ImGuiItemStatusFlags_None = 0,
    ImGuiItemStatusFlags_HoveredRect = 1 shl 0,
    ImGuiItemStatusFlags_HasDisplayRect = 1 shl 1,
    ImGuiItemStatusFlags_Edited = 1 shl 2,
    ImGuiItemStatusFlags_ToggledSelection = 1 shl 3,
    ImGuiItemStatusFlags_ToggledOpen = 1 shl 4,
    ImGuiItemStatusFlags_HasDeactivated = 1 shl 5,
    ImGuiItemStatusFlags_Deactivated = 1 shl 6,
    ImGuiItemStatusFlags_HoveredWindow = 1 shl 7,
    ImGuiItemStatusFlags_FocusedByCode = 1 shl 8,
    ImGuiItemStatusFlags_FocusedByTabbing = 1 shl 9,

  ImGuiInputTextFlagsPrivate* = enum
    ImGuiInputTextFlags_Multiline = 1 shl 26,
    ImGuiInputTextFlags_NoMarkEdited = 1 shl 27,
    ImGuiInputTextFlags_MergedItem = 1 shl 28,

  ImGuiButtonFlagsPrivate* = enum
    ImGuiButtonFlags_PressedOnClick = 1 shl 4,
    ImGuiButtonFlags_PressedOnClickRelease = 1 shl 5,
    ImGuiButtonFlags_PressedOnClickReleaseAnywhere = 1 shl 6,
    ImGuiButtonFlags_PressedOnRelease = 1 shl 7,
    ImGuiButtonFlags_PressedOnDoubleClick = 1 shl 8,
    ImGuiButtonFlags_PressedOnDragDropHold = 1 shl 9,
    ImGuiButtonFlags_Repeat = 1 shl 10,
    ImGuiButtonFlags_FlattenChildren = 1 shl 11,
    ImGuiButtonFlags_AllowItemOverlap = 1 shl 12,
    ImGuiButtonFlags_DontClosePopups = 1 shl 13,
    ImGuiButtonFlags_Disabled = 1 shl 14,
    ImGuiButtonFlags_AlignTextBaseLine = 1 shl 15,
    ImGuiButtonFlags_NoKeyModifiers = 1 shl 16,
    ImGuiButtonFlags_NoHoldingActiveId = 1 shl 17,
    ImGuiButtonFlags_NoNavFocus = 1 shl 18,
    ImGuiButtonFlags_NoHoveredOnFocus = 1 shl 19,

  ImGuiSliderFlagsPrivate* = enum
    ImGuiSliderFlags_Vertical = 1 shl 20,
    ImGuiSliderFlags_ReadOnly = 1 shl 21,

  ImGuiSelectableFlagsPrivate* = enum
    ImGuiSelectableFlags_NoHoldingActiveID = 1 shl 20,
    ImGuiSelectableFlags_SelectOnClick = 1 shl 21,
    ImGuiSelectableFlags_SelectOnRelease = 1 shl 22,
    ImGuiSelectableFlags_SpanAvailWidth = 1 shl 23,
    ImGuiSelectableFlags_DrawHoveredWhenHeld = 1 shl 24,
    ImGuiSelectableFlags_SetNavIdOnHover = 1 shl 25,
    ImGuiSelectableFlags_NoPadWithHalfSpacing = 1 shl 26,

  ImGuiTreeNodeFlagsPrivate* = enum
    ImGuiTreeNodeFlags_ClipLabelForTrailingButton = 1 shl 20,

  ImGuiSeparatorFlags* = enum
    ImGuiSeparatorFlags_None = 0,
    ImGuiSeparatorFlags_Horizontal = 1 shl 0,
    ImGuiSeparatorFlags_Vertical = 1 shl 1,
    ImGuiSeparatorFlags_SpanAllColumns = 1 shl 2,

  ImGuiTextFlags* = enum
    ImGuiTextFlags_None = 0,
    ImGuiTextFlags_NoWidthForLargeClippedText = 1 shl 0,

  ImGuiTooltipFlags* = enum
    ImGuiTooltipFlags_None = 0,
    ImGuiTooltipFlags_OverridePreviousTooltip = 1 shl 0,

  ImGuiLayoutType* = enum
    ImGuiLayoutType_Horizontal = 0,
    ImGuiLayoutType_Vertical = 1,

  ImGuiLogType* = enum
    ImGuiLogType_None = 0,
    ImGuiLogType_TTY,
    ImGuiLogType_File,
    ImGuiLogType_Buffer,
    ImGuiLogType_Clipboard,

  ImGuiAxis* = enum
    ImGuiAxis_None = -1,
    ImGuiAxis_X = 0,
    ImGuiAxis_Y = 1,

  ImGuiPlotType* = enum
    ImGuiPlotType_Lines,
    ImGuiPlotType_Histogram,

  ImGuiInputSource* = enum
    ImGuiInputSource_None = 0,
    ImGuiInputSource_Mouse,
    ImGuiInputSource_Keyboard,
    ImGuiInputSource_Gamepad,
    ImGuiInputSource_Nav,
    ImGuiInputSource_Clipboard,
    ImGuiInputSource_COUNT,

  ImGuiInputReadMode* = enum
    ImGuiInputReadMode_Down,
    ImGuiInputReadMode_Pressed,
    ImGuiInputReadMode_Released,
    ImGuiInputReadMode_Repeat,
    ImGuiInputReadMode_RepeatSlow,
    ImGuiInputReadMode_RepeatFast,

  ImGuiNavHighlightFlags* = enum
    ImGuiNavHighlightFlags_None = 0,
    ImGuiNavHighlightFlags_TypeDefault = 1 shl 0,
    ImGuiNavHighlightFlags_TypeThin = 1 shl 1,
    ImGuiNavHighlightFlags_AlwaysDraw = 1 shl 2,
    ImGuiNavHighlightFlags_NoRounding = 1 shl 3,

  ImGuiNavDirSourceFlags* = enum
    ImGuiNavDirSourceFlags_None = 0,
    ImGuiNavDirSourceFlags_Keyboard = 1 shl 0,
    ImGuiNavDirSourceFlags_PadDPad = 1 shl 1,
    ImGuiNavDirSourceFlags_PadLStick = 1 shl 2,

  ImGuiNavMoveFlags* = enum
    ImGuiNavMoveFlags_None = 0,
    ImGuiNavMoveFlags_LoopX = 1 shl 0,
    ImGuiNavMoveFlags_LoopY = 1 shl 1,
    ImGuiNavMoveFlags_WrapX = 1 shl 2,
    ImGuiNavMoveFlags_WrapY = 1 shl 3,
    ImGuiNavMoveFlags_AllowCurrentNavId = 1 shl 4,
    ImGuiNavMoveFlags_AlsoScoreVisibleSet = 1 shl 5,
    ImGuiNavMoveFlags_ScrollToEdge = 1 shl 6,

  ImGuiNavForward* = enum
    ImGuiNavForward_None,
    ImGuiNavForward_ForwardQueued,
    ImGuiNavForward_ForwardActive,

  ImGuiNavLayer* = enum
    ImGuiNavLayer_Main = 0,
    ImGuiNavLayer_Menu = 1,
    ImGuiNavLayer_COUNT,

  ImGuiPopupPositionPolicy* = enum
    ImGuiPopupPositionPolicy_Default,
    ImGuiPopupPositionPolicy_ComboBox,
    ImGuiPopupPositionPolicy_Tooltip,

  ImGuiNextWindowDataFlags* = enum
    ImGuiNextWindowDataFlags_None = 0,
    ImGuiNextWindowDataFlags_HasPos = 1 shl 0,
    ImGuiNextWindowDataFlags_HasSize = 1 shl 1,
    ImGuiNextWindowDataFlags_HasContentSize = 1 shl 2,
    ImGuiNextWindowDataFlags_HasCollapsed = 1 shl 3,
    ImGuiNextWindowDataFlags_HasSizeConstraint = 1 shl 4,
    ImGuiNextWindowDataFlags_HasFocus = 1 shl 5,
    ImGuiNextWindowDataFlags_HasBgAlpha = 1 shl 6,
    ImGuiNextWindowDataFlags_HasScroll = 1 shl 7,

  ImGuiNextItemDataFlags* = enum
    ImGuiNextItemDataFlags_None = 0,
    ImGuiNextItemDataFlags_HasWidth = 1 shl 0,
    ImGuiNextItemDataFlags_HasOpen = 1 shl 1,

  ImGuiOldColumnFlags* = enum
    ImGuiOldColumnFlags_None = 0,
    ImGuiOldColumnFlags_NoBorder = 1 shl 0,
    ImGuiOldColumnFlags_NoResize = 1 shl 1,
    ImGuiOldColumnFlags_NoPreserveWidths = 1 shl 2,
    ImGuiOldColumnFlags_NoForceWithinWindow = 1 shl 3,
    ImGuiOldColumnFlags_GrowParentContentsSize = 1 shl 4,

  ImGuiContextHookType* = enum
    ImGuiContextHookType_NewFramePre,
    ImGuiContextHookType_NewFramePost,
    ImGuiContextHookType_EndFramePre,
    ImGuiContextHookType_EndFramePost,
    ImGuiContextHookType_RenderPre,
    ImGuiContextHookType_RenderPost,
    ImGuiContextHookType_Shutdown,
    ImGuiContextHookType_PendingRemoval,

  ImGuiTabBarFlagsPrivate* = enum
    ImGuiTabBarFlags_DockNode = 1 shl 20,
    ImGuiTabBarFlags_IsFocused = 1 shl 21,
    ImGuiTabBarFlags_SaveSettings = 1 shl 22,

  ImGuiWindowFlags* = enum
    ImGuiWindowFlags_None = 0,
    ImGuiWindowFlags_NoTitleBar = 1 shl 0,
    ImGuiWindowFlags_NoResize = 1 shl 1,
    ImGuiWindowFlags_NoMove = 1 shl 2,
    ImGuiWindowFlags_NoScrollbar = 1 shl 3,
    ImGuiWindowFlags_NoScrollWithMouse = 1 shl 4,
    ImGuiWindowFlags_NoCollapse = 1 shl 5,
    ImGuiWindowFlags_AlwaysAutoResize = 1 shl 6,
    ImGuiWindowFlags_NoBackground = 1 shl 7,
    ImGuiWindowFlags_NoSavedSettings = 1 shl 8,
    ImGuiWindowFlags_NoMouseInputs = 1 shl 9,
    ImGuiWindowFlags_MenuBar = 1 shl 10,
    ImGuiWindowFlags_HorizontalScrollbar = 1 shl 11,
    ImGuiWindowFlags_NoFocusOnAppearing = 1 shl 12,
    ImGuiWindowFlags_NoBringToFrontOnFocus = 1 shl 13,
    ImGuiWindowFlags_AlwaysVerticalScrollbar = 1 shl 14,
    ImGuiWindowFlags_AlwaysHorizontalScrollbar = 1 shl 15,
    ImGuiWindowFlags_AlwaysUseWindowPadding = 1 shl 16,
    ImGuiWindowFlags_NoNavInputs = 1 shl 18,
    ImGuiWindowFlags_NoNavFocus = 1 shl 19,
    ImGuiWindowFlags_UnsavedDocument = 1 shl 20,
    ImGuiWindowFlags_NavFlattened = 1 shl 23,
    ImGuiWindowFlags_ChildWindow = 1 shl 24,
    ImGuiWindowFlags_Tooltip = 1 shl 25,
    ImGuiWindowFlags_Popup = 1 shl 26,
    ImGuiWindowFlags_Modal = 1 shl 27,
    ImGuiWindowFlags_ChildMenu = 1 shl 28,

  ImGuiInputTextFlags* = enum
    ImGuiInputTextFlags_None = 0,
    ImGuiInputTextFlags_CharsDecimal = 1 shl 0,
    ImGuiInputTextFlags_CharsHexadecimal = 1 shl 1,
    ImGuiInputTextFlags_CharsUppercase = 1 shl 2,
    ImGuiInputTextFlags_CharsNoBlank = 1 shl 3,
    ImGuiInputTextFlags_AutoSelectAll = 1 shl 4,
    ImGuiInputTextFlags_EnterReturnsTrue = 1 shl 5,
    ImGuiInputTextFlags_CallbackCompletion = 1 shl 6,
    ImGuiInputTextFlags_CallbackHistory = 1 shl 7,
    ImGuiInputTextFlags_CallbackAlways = 1 shl 8,
    ImGuiInputTextFlags_CallbackCharFilter = 1 shl 9,
    ImGuiInputTextFlags_AllowTabInput = 1 shl 10,
    ImGuiInputTextFlags_CtrlEnterForNewLine = 1 shl 11,
    ImGuiInputTextFlags_NoHorizontalScroll = 1 shl 12,
    ImGuiInputTextFlags_AlwaysOverwrite = 1 shl 13,
    ImGuiInputTextFlags_ReadOnly = 1 shl 14,
    ImGuiInputTextFlags_Password = 1 shl 15,
    ImGuiInputTextFlags_NoUndoRedo = 1 shl 16,
    ImGuiInputTextFlags_CharsScientific = 1 shl 17,
    ImGuiInputTextFlags_CallbackResize = 1 shl 18,
    ImGuiInputTextFlags_CallbackEdit = 1 shl 19,

  ImGuiTreeNodeFlags* = enum
    ImGuiTreeNodeFlags_None = 0,
    ImGuiTreeNodeFlags_Selected = 1 shl 0,
    ImGuiTreeNodeFlags_Framed = 1 shl 1,
    ImGuiTreeNodeFlags_AllowItemOverlap = 1 shl 2,
    ImGuiTreeNodeFlags_NoTreePushOnOpen = 1 shl 3,
    ImGuiTreeNodeFlags_NoAutoOpenOnLog = 1 shl 4,
    ImGuiTreeNodeFlags_DefaultOpen = 1 shl 5,
    ImGuiTreeNodeFlags_OpenOnDoubleClick = 1 shl 6,
    ImGuiTreeNodeFlags_OpenOnArrow = 1 shl 7,
    ImGuiTreeNodeFlags_Leaf = 1 shl 8,
    ImGuiTreeNodeFlags_Bullet = 1 shl 9,
    ImGuiTreeNodeFlags_FramePadding = 1 shl 10,
    ImGuiTreeNodeFlags_SpanAvailWidth = 1 shl 11,
    ImGuiTreeNodeFlags_SpanFullWidth = 1 shl 12,
    ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 1 shl 13,

  ImGuiPopupFlags* = enum
    ImGuiPopupFlags_None = 0,
    ImGuiPopupFlags_MouseButtonRight = 1,
    ImGuiPopupFlags_MouseButtonMiddle = 2,
    ImGuiPopupFlags_NoOpenOverExistingPopup = 1 shl 5,
    ImGuiPopupFlags_NoOpenOverItems = 1 shl 6,
    ImGuiPopupFlags_AnyPopupId = 1 shl 7,
    ImGuiPopupFlags_AnyPopupLevel = 1 shl 8,

  ImGuiSelectableFlags* = enum
    ImGuiSelectableFlags_None = 0,
    ImGuiSelectableFlags_DontClosePopups = 1 shl 0,
    ImGuiSelectableFlags_SpanAllColumns = 1 shl 1,
    ImGuiSelectableFlags_AllowDoubleClick = 1 shl 2,
    ImGuiSelectableFlags_Disabled = 1 shl 3,
    ImGuiSelectableFlags_AllowItemOverlap = 1 shl 4,

  ImGuiComboFlags* = enum
    ImGuiComboFlags_None = 0,
    ImGuiComboFlags_PopupAlignLeft = 1 shl 0,
    ImGuiComboFlags_HeightSmall = 1 shl 1,
    ImGuiComboFlags_HeightRegular = 1 shl 2,
    ImGuiComboFlags_HeightLarge = 1 shl 3,
    ImGuiComboFlags_HeightLargest = 1 shl 4,
    ImGuiComboFlags_NoArrowButton = 1 shl 5,
    ImGuiComboFlags_NoPreview = 1 shl 6,

  ImGuiTabBarFlags* = enum
    ImGuiTabBarFlags_None = 0,
    ImGuiTabBarFlags_Reorderable = 1 shl 0,
    ImGuiTabBarFlags_AutoSelectNewTabs = 1 shl 1,
    ImGuiTabBarFlags_TabListPopupButton = 1 shl 2,
    ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 1 shl 3,
    ImGuiTabBarFlags_NoTabListScrollingButtons = 1 shl 4,
    ImGuiTabBarFlags_NoTooltip = 1 shl 5,
    ImGuiTabBarFlags_FittingPolicyResizeDown = 1 shl 6,
    ImGuiTabBarFlags_FittingPolicyScroll = 1 shl 7,

  ImGuiTabItemFlags* = enum
    ImGuiTabItemFlags_None = 0,
    ImGuiTabItemFlags_UnsavedDocument = 1 shl 0,
    ImGuiTabItemFlags_SetSelected = 1 shl 1,
    ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 1 shl 2,
    ImGuiTabItemFlags_NoPushId = 1 shl 3,
    ImGuiTabItemFlags_NoTooltip = 1 shl 4,
    ImGuiTabItemFlags_NoReorder = 1 shl 5,
    ImGuiTabItemFlags_Leading = 1 shl 6,
    ImGuiTabItemFlags_Trailing = 1 shl 7,

  ImGuiTabItemFlagsPrivate* = enum
    ImGuiTabItemFlags_NoCloseButton = 1 shl 20,
    ImGuiTabItemFlags_Button = 1 shl 21,

  ImGuiTableFlags* = enum
    ImGuiTableFlags_None = 0,
    ImGuiTableFlags_Resizable = 1 shl 0,
    ImGuiTableFlags_Reorderable = 1 shl 1,
    ImGuiTableFlags_Hideable = 1 shl 2,
    ImGuiTableFlags_Sortable = 1 shl 3,
    ImGuiTableFlags_NoSavedSettings = 1 shl 4,
    ImGuiTableFlags_ContextMenuInBody = 1 shl 5,
    ImGuiTableFlags_RowBg = 1 shl 6,
    ImGuiTableFlags_BordersInnerH = 1 shl 7,
    ImGuiTableFlags_BordersOuterH = 1 shl 8,
    ImGuiTableFlags_BordersInnerV = 1 shl 9,
    ImGuiTableFlags_BordersOuterV = 1 shl 10,
    ImGuiTableFlags_NoBordersInBody = 1 shl 11,
    ImGuiTableFlags_NoBordersInBodyUntilResize = 1 shl 12,
    ImGuiTableFlags_SizingFixedFit = 1 shl 13,
    ImGuiTableFlags_SizingFixedSame = 2 shl 13,
    ImGuiTableFlags_SizingStretchProp = 3 shl 13,
    ImGuiTableFlags_SizingStretchSame = 4 shl 13,
    ImGuiTableFlags_NoHostExtendX = 1 shl 16,
    ImGuiTableFlags_NoHostExtendY = 1 shl 17,
    ImGuiTableFlags_NoKeepColumnsVisible = 1 shl 18,
    ImGuiTableFlags_PreciseWidths = 1 shl 19,
    ImGuiTableFlags_NoClip = 1 shl 20,
    ImGuiTableFlags_PadOuterX = 1 shl 21,
    ImGuiTableFlags_NoPadOuterX = 1 shl 22,
    ImGuiTableFlags_NoPadInnerX = 1 shl 23,
    ImGuiTableFlags_ScrollX = 1 shl 24,
    ImGuiTableFlags_ScrollY = 1 shl 25,
    ImGuiTableFlags_SortMulti = 1 shl 26,
    ImGuiTableFlags_SortTristate = 1 shl 27,

  ImGuiTableColumnFlags* = enum
    ImGuiTableColumnFlags_None = 0,
    ImGuiTableColumnFlags_DefaultHide = 1 shl 0,
    ImGuiTableColumnFlags_DefaultSort = 1 shl 1,
    ImGuiTableColumnFlags_WidthStretch = 1 shl 2,
    ImGuiTableColumnFlags_WidthFixed = 1 shl 3,
    ImGuiTableColumnFlags_NoResize = 1 shl 4,
    ImGuiTableColumnFlags_NoReorder = 1 shl 5,
    ImGuiTableColumnFlags_NoHide = 1 shl 6,
    ImGuiTableColumnFlags_NoClip = 1 shl 7,
    ImGuiTableColumnFlags_NoSort = 1 shl 8,
    ImGuiTableColumnFlags_NoSortAscending = 1 shl 9,
    ImGuiTableColumnFlags_NoSortDescending = 1 shl 10,
    ImGuiTableColumnFlags_NoHeaderWidth = 1 shl 11,
    ImGuiTableColumnFlags_PreferSortAscending = 1 shl 12,
    ImGuiTableColumnFlags_PreferSortDescending = 1 shl 13,
    ImGuiTableColumnFlags_IndentEnable = 1 shl 14,
    ImGuiTableColumnFlags_IndentDisable = 1 shl 15,
    ImGuiTableColumnFlags_IsEnabled = 1 shl 20,
    ImGuiTableColumnFlags_IsVisible = 1 shl 21,
    ImGuiTableColumnFlags_IsSorted = 1 shl 22,
    ImGuiTableColumnFlags_IsHovered = 1 shl 23,
    ImGuiTableColumnFlags_NoDirectResize = 1 shl 30,

  ImGuiTableRowFlags* = enum
    ImGuiTableRowFlags_None = 0,
    ImGuiTableRowFlags_Headers = 1 shl 0,

  ImGuiTableBgTarget* = enum
    ImGuiTableBgTarget_None = 0,
    ImGuiTableBgTarget_RowBg0 = 1,
    ImGuiTableBgTarget_RowBg1 = 2,
    ImGuiTableBgTarget_CellBg = 3,

  ImGuiFocusedFlags* = enum
    ImGuiFocusedFlags_None = 0,
    ImGuiFocusedFlags_ChildWindows = 1 shl 0,
    ImGuiFocusedFlags_RootWindow = 1 shl 1,
    ImGuiFocusedFlags_AnyWindow = 1 shl 2,

  ImGuiHoveredFlags* = enum
    ImGuiHoveredFlags_None = 0,
    ImGuiHoveredFlags_ChildWindows = 1 shl 0,
    ImGuiHoveredFlags_RootWindow = 1 shl 1,
    ImGuiHoveredFlags_AnyWindow = 1 shl 2,
    ImGuiHoveredFlags_AllowWhenBlockedByPopup = 1 shl 3,
    ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 1 shl 5,
    ImGuiHoveredFlags_AllowWhenOverlapped = 1 shl 6,
    ImGuiHoveredFlags_AllowWhenDisabled = 1 shl 7,

  ImGuiDragDropFlags* = enum
    ImGuiDragDropFlags_None = 0,
    ImGuiDragDropFlags_SourceNoPreviewTooltip = 1 shl 0,
    ImGuiDragDropFlags_SourceNoDisableHover = 1 shl 1,
    ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 1 shl 2,
    ImGuiDragDropFlags_SourceAllowNullID = 1 shl 3,
    ImGuiDragDropFlags_SourceExtern = 1 shl 4,
    ImGuiDragDropFlags_SourceAutoExpirePayload = 1 shl 5,
    ImGuiDragDropFlags_AcceptBeforeDelivery = 1 shl 10,
    ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 1 shl 11,
    ImGuiDragDropFlags_AcceptNoPreviewTooltip = 1 shl 12,

  ImGuiDataType* = enum
    ImGuiDataType_S8,
    ImGuiDataType_U8,
    ImGuiDataType_S16,
    ImGuiDataType_U16,
    ImGuiDataType_S32,
    ImGuiDataType_U32,
    ImGuiDataType_S64,
    ImGuiDataType_U64,
    ImGuiDataType_Float,
    ImGuiDataType_Double,
    ImGuiDataType_COUNT,

  ImGuiDataTypePrivate* = enum
    ImGuiDataType_String = ImGuiDataType_COUNT.int + 1,
    ImGuiDataType_Pointer,
    ImGuiDataType_ID,

  ImGuiDir* = enum
    ImGuiDir_None = -1,
    ImGuiDir_Left = 0,
    ImGuiDir_Right = 1,
    ImGuiDir_Up = 2,
    ImGuiDir_Down = 3,
    ImGuiDir_COUNT,

  ImGuiSortDirection* = enum
    ImGuiSortDirection_None = 0,
    ImGuiSortDirection_Ascending = 1,
    ImGuiSortDirection_Descending = 2,

  ImGuiKey* = enum
    ImGuiKey_Tab,
    ImGuiKey_LeftArrow,
    ImGuiKey_RightArrow,
    ImGuiKey_UpArrow,
    ImGuiKey_DownArrow,
    ImGuiKey_PageUp,
    ImGuiKey_PageDown,
    ImGuiKey_Home,
    ImGuiKey_End,
    ImGuiKey_Insert,
    ImGuiKey_Delete,
    ImGuiKey_Backspace,
    ImGuiKey_Space,
    ImGuiKey_Enter,
    ImGuiKey_Escape,
    ImGuiKey_KeyPadEnter,
    ImGuiKey_A,
    ImGuiKey_C,
    ImGuiKey_V,
    ImGuiKey_X,
    ImGuiKey_Y,
    ImGuiKey_Z,
    ImGuiKey_COUNT,

  ImGuiKeyModFlags* = enum
    ImGuiKeyModFlags_None = 0,
    ImGuiKeyModFlags_Ctrl = 1 shl 0,
    ImGuiKeyModFlags_Shift = 1 shl 1,
    ImGuiKeyModFlags_Alt = 1 shl 2,
    ImGuiKeyModFlags_Super = 1 shl 3,

  ImGuiNavInput* = enum
    ImGuiNavInput_Activate,
    ImGuiNavInput_Cancel,
    ImGuiNavInput_Input,
    ImGuiNavInput_Menu,
    ImGuiNavInput_DpadLeft,
    ImGuiNavInput_DpadRight,
    ImGuiNavInput_DpadUp,
    ImGuiNavInput_DpadDown,
    ImGuiNavInput_LStickLeft,
    ImGuiNavInput_LStickRight,
    ImGuiNavInput_LStickUp,
    ImGuiNavInput_LStickDown,
    ImGuiNavInput_FocusPrev,
    ImGuiNavInput_FocusNext,
    ImGuiNavInput_TweakSlow,
    ImGuiNavInput_TweakFast,
    ImGuiNavInput_KeyMenu,
    ImGuiNavInput_KeyLeft,
    ImGuiNavInput_KeyRight,
    ImGuiNavInput_KeyUp,
    ImGuiNavInput_KeyDown,
    ImGuiNavInput_COUNT,

  ImGuiConfigFlags* = enum
    ImGuiConfigFlags_None = 0,
    ImGuiConfigFlags_NavEnableKeyboard = 1 shl 0,
    ImGuiConfigFlags_NavEnableGamepad = 1 shl 1,
    ImGuiConfigFlags_NavEnableSetMousePos = 1 shl 2,
    ImGuiConfigFlags_NavNoCaptureKeyboard = 1 shl 3,
    ImGuiConfigFlags_NoMouse = 1 shl 4,
    ImGuiConfigFlags_NoMouseCursorChange = 1 shl 5,
    ImGuiConfigFlags_IsSRGB = 1 shl 20,
    ImGuiConfigFlags_IsTouchScreen = 1 shl 21,

  ImGuiBackendFlags* = enum
    ImGuiBackendFlags_None = 0,
    ImGuiBackendFlags_HasGamepad = 1 shl 0,
    ImGuiBackendFlags_HasMouseCursors = 1 shl 1,
    ImGuiBackendFlags_HasSetMousePos = 1 shl 2,
    ImGuiBackendFlags_RendererHasVtxOffset = 1 shl 3,

  ImGuiCol* = enum
    ImGuiCol_Text,
    ImGuiCol_TextDisabled,
    ImGuiCol_WindowBg,
    ImGuiCol_ChildBg,
    ImGuiCol_PopupBg,
    ImGuiCol_Border,
    ImGuiCol_BorderShadow,
    ImGuiCol_FrameBg,
    ImGuiCol_FrameBgHovered,
    ImGuiCol_FrameBgActive,
    ImGuiCol_TitleBg,
    ImGuiCol_TitleBgActive,
    ImGuiCol_TitleBgCollapsed,
    ImGuiCol_MenuBarBg,
    ImGuiCol_ScrollbarBg,
    ImGuiCol_ScrollbarGrab,
    ImGuiCol_ScrollbarGrabHovered,
    ImGuiCol_ScrollbarGrabActive,
    ImGuiCol_CheckMark,
    ImGuiCol_SliderGrab,
    ImGuiCol_SliderGrabActive,
    ImGuiCol_Button,
    ImGuiCol_ButtonHovered,
    ImGuiCol_ButtonActive,
    ImGuiCol_Header,
    ImGuiCol_HeaderHovered,
    ImGuiCol_HeaderActive,
    ImGuiCol_Separator,
    ImGuiCol_SeparatorHovered,
    ImGuiCol_SeparatorActive,
    ImGuiCol_ResizeGrip,
    ImGuiCol_ResizeGripHovered,
    ImGuiCol_ResizeGripActive,
    ImGuiCol_Tab,
    ImGuiCol_TabHovered,
    ImGuiCol_TabActive,
    ImGuiCol_TabUnfocused,
    ImGuiCol_TabUnfocusedActive,
    ImGuiCol_PlotLines,
    ImGuiCol_PlotLinesHovered,
    ImGuiCol_PlotHistogram,
    ImGuiCol_PlotHistogramHovered,
    ImGuiCol_TableHeaderBg,
    ImGuiCol_TableBorderStrong,
    ImGuiCol_TableBorderLight,
    ImGuiCol_TableRowBg,
    ImGuiCol_TableRowBgAlt,
    ImGuiCol_TextSelectedBg,
    ImGuiCol_DragDropTarget,
    ImGuiCol_NavHighlight,
    ImGuiCol_NavWindowingHighlight,
    ImGuiCol_NavWindowingDimBg,
    ImGuiCol_ModalWindowDimBg,
    ImGuiCol_COUNT,

  ImGuiStyleVar* = enum
    ImGuiStyleVar_Alpha,
    ImGuiStyleVar_WindowPadding,
    ImGuiStyleVar_WindowRounding,
    ImGuiStyleVar_WindowBorderSize,
    ImGuiStyleVar_WindowMinSize,
    ImGuiStyleVar_WindowTitleAlign,
    ImGuiStyleVar_ChildRounding,
    ImGuiStyleVar_ChildBorderSize,
    ImGuiStyleVar_PopupRounding,
    ImGuiStyleVar_PopupBorderSize,
    ImGuiStyleVar_FramePadding,
    ImGuiStyleVar_FrameRounding,
    ImGuiStyleVar_FrameBorderSize,
    ImGuiStyleVar_ItemSpacing,
    ImGuiStyleVar_ItemInnerSpacing,
    ImGuiStyleVar_IndentSpacing,
    ImGuiStyleVar_CellPadding,
    ImGuiStyleVar_ScrollbarSize,
    ImGuiStyleVar_ScrollbarRounding,
    ImGuiStyleVar_GrabMinSize,
    ImGuiStyleVar_GrabRounding,
    ImGuiStyleVar_TabRounding,
    ImGuiStyleVar_ButtonTextAlign,
    ImGuiStyleVar_SelectableTextAlign,
    ImGuiStyleVar_COUNT,

  ImGuiButtonFlags* = enum
    ImGuiButtonFlags_None = 0,
    ImGuiButtonFlags_MouseButtonLeft = 1 shl 0,
    ImGuiButtonFlags_MouseButtonRight = 1 shl 1,
    ImGuiButtonFlags_MouseButtonMiddle = 1 shl 2,

  ImGuiColorEditFlags* = enum
    ImGuiColorEditFlags_None = 0,
    ImGuiColorEditFlags_NoAlpha = 1 shl 1,
    ImGuiColorEditFlags_NoPicker = 1 shl 2,
    ImGuiColorEditFlags_NoOptions = 1 shl 3,
    ImGuiColorEditFlags_NoSmallPreview = 1 shl 4,
    ImGuiColorEditFlags_NoInputs = 1 shl 5,
    ImGuiColorEditFlags_NoTooltip = 1 shl 6,
    ImGuiColorEditFlags_NoLabel = 1 shl 7,
    ImGuiColorEditFlags_NoSidePreview = 1 shl 8,
    ImGuiColorEditFlags_NoDragDrop = 1 shl 9,
    ImGuiColorEditFlags_NoBorder = 1 shl 10,
    ImGuiColorEditFlags_AlphaBar = 1 shl 16,
    ImGuiColorEditFlags_AlphaPreview = 1 shl 17,
    ImGuiColorEditFlags_AlphaPreviewHalf = 1 shl 18,
    ImGuiColorEditFlags_HDR = 1 shl 19,
    ImGuiColorEditFlags_DisplayRGB = 1 shl 20,
    ImGuiColorEditFlags_DisplayHSV = 1 shl 21,
    ImGuiColorEditFlags_DisplayHex = 1 shl 22,
    ImGuiColorEditFlags_Uint8 = 1 shl 23,
    ImGuiColorEditFlags_Float = 1 shl 24,
    ImGuiColorEditFlags_PickerHueBar = 1 shl 25,
    ImGuiColorEditFlags_PickerHueWheel = 1 shl 26,
    ImGuiColorEditFlags_InputRGB = 1 shl 27,
    ImGuiColorEditFlags_InputHSV = 1 shl 28,

  ImGuiSliderFlags* = enum
    ImGuiSliderFlags_None = 0,
    ImGuiSliderFlags_AlwaysClamp = 1 shl 4,
    ImGuiSliderFlags_Logarithmic = 1 shl 5,
    ImGuiSliderFlags_NoRoundToFormat = 1 shl 6,
    ImGuiSliderFlags_NoInput = 1 shl 7,

  ImGuiMouseButton* = enum
    ImGuiMouseButton_Left = 0,
    ImGuiMouseButton_Right = 1,
    ImGuiMouseButton_Middle = 2,
    ImGuiMouseButton_COUNT = 5,

  ImGuiMouseCursor* = enum
    ImGuiMouseCursor_None = -1,
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput,
    ImGuiMouseCursor_ResizeAll,
    ImGuiMouseCursor_ResizeNS,
    ImGuiMouseCursor_ResizeEW,
    ImGuiMouseCursor_ResizeNESW,
    ImGuiMouseCursor_ResizeNWSE,
    ImGuiMouseCursor_Hand,
    ImGuiMouseCursor_NotAllowed,
    ImGuiMouseCursor_COUNT,

  ImGuiCond* = enum
    ImGuiCond_None = 0,
    ImGuiCond_Always = 1 shl 0,
    ImGuiCond_Once = 1 shl 1,
    ImGuiCond_FirstUseEver = 1 shl 2,
    ImGuiCond_Appearing = 1 shl 3,

  ImDrawFlags* = enum
    ImDrawFlags_None = 0,
    ImDrawFlags_Closed = 1 shl 0,
    ImDrawFlags_RoundCornersTopLeft = 1 shl 4,
    ImDrawFlags_RoundCornersTopRight = 1 shl 5,
    ImDrawFlags_RoundCornersBottomLeft = 1 shl 6,
    ImDrawFlags_RoundCornersBottomRight = 1 shl 7,
    ImDrawFlags_RoundCornersNone = 1 shl 8,

  ImDrawListFlags* = enum
    ImDrawListFlags_None = 0,
    ImDrawListFlags_AntiAliasedLines = 1 shl 0,
    ImDrawListFlags_AntiAliasedLinesUseTex = 1 shl 1,
    ImDrawListFlags_AntiAliasedFill = 1 shl 2,
    ImDrawListFlags_AllowVtxOffset = 1 shl 3,

  ImGuiViewportFlags* = enum
    ImGuiViewportFlags_None = 0,
    ImGuiViewportFlags_IsPlatformWindow = 1 shl 0,
    ImGuiViewportFlags_IsPlatformMonitor = 1 shl 1,
    ImGuiViewportFlags_OwnedByApp = 1 shl 2,

  ImFontAtlasFlags* = enum
    ImFontAtlasFlags_None = 0,
    ImFontAtlasFlags_NoPowerOfTwoHeight = 1 shl 0,
    ImFontAtlasFlags_NoMouseCursors = 1 shl 1,
    ImFontAtlasFlags_NoBakedLines = 1 shl 2,

const
  ImGuiPopupFlags_MouseButtonMask* = 0x1F
  ImGuiSliderFlags_InvalidMask* = 0x7000000F
  ImGuiButtonFlags_PressedOnDefault* = ImGuiButtonFlags_PressedOnClickRelease
  ImGuiButtonFlags_MouseButtonDefault* = ImGuiButtonFlags_MouseButtonLeft
  ImGuiNavInput_InternalStart* = ImGuiNavInput_KeyMenu
  ImGuiTabBarFlags_FittingPolicyDefault* = ImGuiTabBarFlags_FittingPolicyResizeDown
  ImGuiPopupFlags_MouseButtonLeft* = ImGuiPopupFlags_None
  ImGuiPopupFlags_MouseButtonDefault* = ImGuiPopupFlags_MouseButtonRight
  ImGuiButtonFlags_PressedOnMask* = ImGuiButtonFlags_PressedOnClick.int or
                                    ImGuiButtonFlags_PressedOnClickRelease.int or
                                    ImGuiButtonFlags_PressedOnClickReleaseAnywhere.int or
                                    ImGuiButtonFlags_PressedOnRelease.int or
                                    ImGuiButtonFlags_PressedOnDoubleClick.int or
                                    ImGuiButtonFlags_PressedOnDragDropHold.int
  ImGuiWindowFlags_NoNav* = ImGuiWindowFlags_NoNavInputs.int or
                            ImGuiWindowFlags_NoNavFocus.int
  ImGuiWindowFlags_NoDecoration* = ImGuiWindowFlags_NoTitleBar.int or
                                   ImGuiWindowFlags_NoResize.int or
                                   ImGuiWindowFlags_NoScrollbar.int or
                                   ImGuiWindowFlags_NoCollapse.int
  ImGuiWindowFlags_NoInputs* = ImGuiWindowFlags_NoMouseInputs.int or
                               ImGuiWindowFlags_NoNavInputs.int or
                               ImGuiWindowFlags_NoNavFocus.int
  ImGuiTreeNodeFlags_CollapsingHeader* = ImGuiTreeNodeFlags_Framed.int or
                                         ImGuiTreeNodeFlags_NoTreePushOnOpen.int
  ImGuiPopupFlags_AnyPopup* = ImGuiPopupFlags_AnyPopupId.int or
                              ImGuiPopupFlags_AnyPopupLevel.int
  ImGuiComboFlags_HeightMask* = ImGuiComboFlags_HeightSmall.int or
                                ImGuiComboFlags_HeightRegular.int or
                                ImGuiComboFlags_HeightLarge.int or
                                ImGuiComboFlags_HeightLargest.int
  ImGuiTabBarFlags_FittingPolicyMask* = ImGuiTabBarFlags_FittingPolicyResizeDown.int or
                                        ImGuiTabBarFlags_FittingPolicyScroll.int
  ImGuiTabItemFlags_SectionMask* = ImGuiTabItemFlags_Leading.int or
                                   ImGuiTabItemFlags_Trailing.int
  ImGuiTableFlags_BordersH* = ImGuiTableFlags_BordersInnerH.int or
                              ImGuiTableFlags_BordersOuterH.int
  ImGuiTableFlags_BordersV* = ImGuiTableFlags_BordersInnerV.int or
                              ImGuiTableFlags_BordersOuterV.int
  ImGuiTableFlags_BordersInner* = ImGuiTableFlags_BordersInnerV.int or
                                  ImGuiTableFlags_BordersInnerH.int
  ImGuiTableFlags_BordersOuter* = ImGuiTableFlags_BordersOuterV.int or
                                  ImGuiTableFlags_BordersOuterH.int
  ImGuiTableFlags_Borders* = ImGuiTableFlags_BordersInner.int or
                             ImGuiTableFlags_BordersOuter.int
  ImGuiTableFlags_SizingMask* = ImGuiTableFlags_SizingFixedFit.int or
                                ImGuiTableFlags_SizingFixedSame.int or
                                ImGuiTableFlags_SizingStretchProp.int or
                                ImGuiTableFlags_SizingStretchSame.int
  ImGuiTableColumnFlags_WidthMask* = ImGuiTableColumnFlags_WidthStretch.int or
                                     ImGuiTableColumnFlags_WidthFixed.int
  ImGuiTableColumnFlags_IndentMask* = ImGuiTableColumnFlags_IndentEnable.int or
                                      ImGuiTableColumnFlags_IndentDisable.int
  ImGuiTableColumnFlags_StatusMask* = ImGuiTableColumnFlags_IsEnabled.int or
                                      ImGuiTableColumnFlags_IsVisible.int or
                                      ImGuiTableColumnFlags_IsSorted.int or
                                      ImGuiTableColumnFlags_IsHovered.int
  ImGuiFocusedFlags_RootAndChildWindows* = ImGuiFocusedFlags_RootWindow.int or
                                           ImGuiFocusedFlags_ChildWindows.int
  ImGuiHoveredFlags_RectOnly* = ImGuiHoveredFlags_AllowWhenBlockedByPopup.int or
                                ImGuiHoveredFlags_AllowWhenBlockedByActiveItem.int or
                                ImGuiHoveredFlags_AllowWhenOverlapped.int
  ImGuiHoveredFlags_RootAndChildWindows* = ImGuiHoveredFlags_RootWindow.int or
                                           ImGuiHoveredFlags_ChildWindows.int
  ImGuiDragDropFlags_AcceptPeekOnly* = ImGuiDragDropFlags_AcceptBeforeDelivery.int or
                                       ImGuiDragDropFlags_AcceptNoDrawDefaultRect.int
  ImDrawFlags_RoundCornersTop* = ImDrawFlags_RoundCornersTopLeft.int or
                                 ImDrawFlags_RoundCornersTopRight.int
  ImDrawFlags_RoundCornersBottom* = ImDrawFlags_RoundCornersBottomLeft.int or
                                    ImDrawFlags_RoundCornersBottomRight.int
  ImDrawFlags_RoundCornersLeft* = ImDrawFlags_RoundCornersBottomLeft.int or
                                  ImDrawFlags_RoundCornersTopLeft.int
  ImDrawFlags_RoundCornersRight* = ImDrawFlags_RoundCornersBottomRight.int or
                                   ImDrawFlags_RoundCornersTopRight.int
  ImDrawFlags_RoundCornersAll* = ImDrawFlags_RoundCornersTopLeft.int or
                                 ImDrawFlags_RoundCornersTopRight.int or
                                 ImDrawFlags_RoundCornersBottomLeft.int or
                                 ImDrawFlags_RoundCornersBottomRight.int
  ImDrawFlags_RoundCornersMask* = ImDrawFlags_RoundCornersAll.int or
                                  ImDrawFlags_RoundCornersNone.int
  ImGuiButtonFlags_MouseButtonMask* = ImGuiButtonFlags_MouseButtonLeft.int or
                                      ImGuiButtonFlags_MouseButtonRight.int or
                                      ImGuiButtonFlags_MouseButtonMiddle.int
  ImGuiColorEditFlags_OptionsDefault* = ImGuiColorEditFlags_Uint8.int or
                                        ImGuiColorEditFlags_DisplayRGB.int or
                                        ImGuiColorEditFlags_InputRGB.int or
                                        ImGuiColorEditFlags_PickerHueBar.int
  ImGuiColorEditFlags_DisplayMask* = ImGuiColorEditFlags_DisplayRGB.int or
                                     ImGuiColorEditFlags_DisplayHSV.int or
                                     ImGuiColorEditFlags_DisplayHex.int
  ImGuiColorEditFlags_DataTypeMask* = ImGuiColorEditFlags_Uint8.int or
                                      ImGuiColorEditFlags_Float.int
  ImGuiColorEditFlags_PickerMask* = ImGuiColorEditFlags_PickerHueWheel.int or
                                    ImGuiColorEditFlags_PickerHueBar.int
  ImGuiColorEditFlags_InputMask* = ImGuiColorEditFlags_InputRGB.int or
                                   ImGuiColorEditFlags_InputHSV.int
  ImDrawFlags_RoundCornersDefault* = ImDrawFlags_RoundCornersAll.int

type
  ImTextureID* = pointer
  ImFileHandle* = pointer
  ImGuiID* = cuint
  ImGuiErrorLogCallback* = proc(user_data: pointer; fmt: cstring) {.varargs.}
  ImGuiInputTextCallback* = proc(data: ptr ImGuiInputTextCallbackData): cint
  ImGuiSizeCallback* = proc(data: ptr ImGuiSizeCallbackData)
  ImGuiMemAllocFunc* = proc(sz: csize_t; user_data: pointer): pointer
  ImGuiMemFreeFunc* = proc(`ptr`: pointer; user_data: pointer)
  ImS8* = cchar
  ImU8* = cuchar
  ImS16* = cshort
  ImU16* = cushort
  ImS32* = cint
  ImU32* = cuint
  ImS64* = int64
  ImU64* = uint64

  ImVec2* {.bycopy.} = object
    x*: cfloat
    y*: cfloat

  ImVec4* {.bycopy.} = object
    x*: cfloat
    y*: cfloat
    z*: cfloat
    w*: cfloat

  ImVector*[T] {.bycopy.} = object
    Size*: cint
    Capacity*: cint
    Data*: ptr T

  ImFontGlyph* {.bycopy.} = object
    Colored* {.bitsize: 1.}: cuint
    Visible* {.bitsize: 1.}: cuint
    Codepoint* {.bitsize: 30.}: cuint
    AdvanceX*: cfloat
    X0*: cfloat
    Y0*: cfloat
    X1*: cfloat
    Y1*: cfloat
    U0*: cfloat
    V0*: cfloat
    U1*: cfloat
    V1*: cfloat

  ImFontConfig* {.bycopy.} = object
    FontData*: pointer
    FontDataSize*: cint
    FontDataOwnedByAtlas*: bool
    FontNo*: cint
    SizePixels*: cfloat
    OversampleH*: cint
    OversampleV*: cint
    PixelSnapH*: bool
    GlyphExtraSpacing*: ImVec2
    GlyphOffset*: ImVec2
    GlyphRanges*: ptr ImWchar
    GlyphMinAdvanceX*: cfloat
    GlyphMaxAdvanceX*: cfloat
    MergeMode*: bool
    FontBuilderFlags*: cuint
    RasterizerMultiply*: cfloat
    EllipsisChar*: ImWchar
    Name*: array[40, char]
    DstFont*: ptr ImFont

  ImFont* {.bycopy.} = object
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
    Ascent*: cfloat
    Descent*: cfloat
    MetricsTotalSurface*: cint
    Used4kPagesMap*: array[(IM_UNICODE_CODEPOINT_MAX + 1) div 4096 div 8, ImU8]

  ImGuiStyle* {.bycopy.} = object
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

  ImFontAtlasCustomRect* {.bycopy.} = object
    Width*: cushort
    Height*: cushort
    X*: cushort
    Y*: cushort
    GlyphID*: cuint
    GlyphAdvanceX*: cfloat
    GlyphOffset*: ImVec2
    Font*: ptr ImFont

  ImFontBuilderIO* {.bycopy.} = object
    FontBuilder_Build*: proc(atlas: ptr ImFontAtlas): bool

  ImFontAtlas* {.bycopy.} = object
    Flags*: ImFontAtlasFlags
    TexID*: ImTextureID
    TexDesiredWidth*: cint
    TexGlyphPadding*: cint
    Locked*: bool
    TexPixelsUseColors*: bool
    TexPixelsAlpha8*: ptr cuchar
    TexPixelsRGBA32*: ptr cuint
    TexWidth*: cint
    TexHeight*: cint
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

  ImGuiIO* {.bycopy.} = object
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
    GetClipboardTextFn*: proc(user_data: pointer): cstring
    SetClipboardTextFn*: proc(user_data: pointer; text: cstring)
    ClipboardUserData*: pointer
    ImeSetInputScreenPosFn*: proc (x: cint; y: cint)
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

  ImGuiInputTextCallbackData* {.bycopy.} = object
    EventFlag*: ImGuiInputTextFlags
    Flags*: ImGuiInputTextFlags
    UserData*: pointer
    EventChar*: ImWchar
    EventKey*: ImGuiKey
    Buf*: cstring
    BufTextLen*: cint
    BufSize*: cint
    BufDirty*: bool
    CursorPos*: cint
    SelectionStart*: cint
    SelectionEnd*: cint

  ImGuiSizeCallbackData* {.bycopy.} = object
    UserData*: pointer
    Pos*: ImVec2
    CurrentSize*: ImVec2
    DesiredSize*: ImVec2

  ImGuiPayload* {.bycopy.} = object
    Data*: pointer
    DataSize*: cint
    SourceId*: ImGuiID
    SourceParentId*: ImGuiID
    DataFrameCount*: cint
    DataType*: array[32 + 1, char]
    Preview*: bool
    Delivery*: bool

  ImGuiTableColumnSortSpecs* {.bycopy.} = object
    ColumnUserID*: ImGuiID
    ColumnIndex*: ImS16
    SortOrder*: ImS16
    SortDirection* {.bitsize: 8.}: ImGuiSortDirection

  ImGuiTableSortSpecs* {.bycopy.} = object
    Specs*: ptr ImGuiTableColumnSortSpecs
    SpecsCount*: cint
    SpecsDirty*: bool

  ImGuiOnceUponAFrame* {.bycopy.} = object
    RefFrame*: cint

  ImGuiTextFilter* {.bycopy.} = object
    InputBuf*: array[256, char]
    Filters*: ImVector[ImGuiTextFilterImGuiTextRange]
    CountGrep*: cint

  ImGuiTextFilterImGuiTextRange* {.bycopy.} = object
    b*: cstring
    e*: cstring

  ImGuiTextBuffer* {.bycopy.} = object
    Buf*: ImVector[char]

  ImGuiStorage* {.bycopy.} = object
    Data*: ImVector[ImGuiStorageImGuiStoragePair]

  ImGuiStorageImGuiStoragePair* {.bycopy.} = object
    key*: ImGuiID

  INNER_C_UNION_imgui_303* {.bycopy, union.} = object
    val_i*: cint
    val_f*: cfloat
    val_p*: pointer

  ImGuiListClipper* {.bycopy.} = object
    DisplayStart*: cint
    DisplayEnd*: cint
    ItemsCount*: cint
    StepNo*: cint
    ItemsFrozen*: cint
    ItemsHeight*: cfloat
    StartPosY*: cfloat

  ImColor* {.bycopy.} = object
    Value*: ImVec4

  ImDrawCallback* = proc (parent_list: ptr ImDrawList; cmd: ptr ImDrawCmd)
  ImDrawCmd* {.bycopy.} = object
    ClipRect*: ImVec4
    TextureId*: ImTextureID
    VtxOffset*: cuint
    IdxOffset*: cuint
    ElemCount*: cuint
    UserCallback*: ImDrawCallback
    UserCallbackData*: pointer

  ImDrawIdx* = cushort
  ImDrawVert* {.bycopy.} = object
    pos*: ImVec2
    uv*: ImVec2
    col*: ImU32

  ImDrawListSharedData* {.bycopy.} = object
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
    TexUvLines*: ptr ImVec4

  ImDrawCmdHeader* {.bycopy.} = object
    ClipRect*: ImVec4
    TextureId*: ImTextureID
    VtxOffset*: cuint

  ImDrawChannel* {.bycopy.} = object
    CmdBuffer* {.importc: "_CmdBuffer".}: ImVector[ImDrawCmd]
    IdxBuffer* {.importc: "_IdxBuffer".}: ImVector[ImDrawIdx]

  ImDrawListSplitter* {.bycopy.} = object
    Current* {.importc: "_Current".}: cint
    Count* {.importc: "_Count".}: cint
    Channels* {.importc: "_Channels".}: ImVector[ImDrawChannel]

  ImDrawList* {.bycopy.} = object
    CmdBuffer*: ImVector[ImDrawCmd]
    IdxBuffer*: ImVector[ImDrawIdx]
    VtxBuffer*: ImVector[ImDrawVert]
    Flags*: ImDrawListFlags
    VtxCurrentIdx* {.importc: "_VtxCurrentIdx".}: cuint
    Data* {.importc: "_Data".}: ptr ImDrawListSharedData
    OwnerName* {.importc: "_OwnerName".}: cstring
    VtxWritePtr* {.importc: "_VtxWritePtr".}: ptr ImDrawVert
    IdxWritePtr* {.importc: "_IdxWritePtr".}: ptr ImDrawIdx
    ClipRectStack* {.importc: "_ClipRectStack".}: ImVector[ImVec4]
    TextureIdStack* {.importc: "_TextureIdStack".}: ImVector[ImTextureID]
    Path* {.importc: "_Path".}: ImVector[ImVec2]
    CmdHeader* {.importc: "_CmdHeader".}: ImDrawCmdHeader
    Splitter* {.importc: "_Splitter".}: ImDrawListSplitter
    FringeScale* {.importc: "_FringeScale".}: cfloat

  ImDrawData* {.bycopy.} = object
    Valid*: bool
    CmdListsCount*: cint
    TotalIdxCount*: cint
    TotalVtxCount*: cint
    CmdLists*: ptr ptr ImDrawList
    DisplayPos*: ImVec2
    DisplaySize*: ImVec2
    FramebufferScale*: ImVec2

  ImFontGlyphRangesBuilder* {.bycopy.} = object
    UsedChars*: ImVector[ImU32]

  ImVec1* {.bycopy.} = object
    x*: cfloat

  ImVec2ih* {.bycopy.} = object
    x*: cshort
    y*: cshort

  ImRect* {.bycopy.} = object
    Min*: ImVec2
    Max*: ImVec2

  ImBitArray*[BITCOUNT: static[cint]] {.bycopy.} = object
    Storage*: array[(BITCOUNT + 31) shr 5, ImU32]

  ImBitVector* {.bycopy.} = object
    Storage*: ImVector[ImU32]

  ImSpan*[T] {.bycopy.} = object
    Data*: ptr T
    DataEnd*: ptr T

  ImSpanAllocator*[CHUNKS: static[cint]] {.bycopy.} = object
    BasePtr*: cstring
    CurrOff*: cint
    CurrIdx*: cint
    Offsets*: array[CHUNKS, cint]
    Sizes*: array[CHUNKS, cint]

  ImPoolIdx* = cint
  ImPool*[T] {.bycopy.} = object
    Buf*: ImVector[T]
    Map*: ImGuiStorage
    FreeIdx*: ImPoolIdx

  ImChunkStream*[T] {.bycopy.} = object
    Buf*: ImVector[char]

  ImDrawDataBuilder* {.bycopy.} = object
    Layers*: array[2, ImVector[ptr ImDrawList]]

  ImGuiDataTypeTempStorage* {.bycopy.} = object
    Data*: array[8, ImU8]

  ImGuiDataTypeInfo* {.bycopy.} = object
    Size*: csize_t
    Name*: cstring
    PrintFmt*: cstring
    ScanFmt*: cstring

  ImGuiColorMod* {.bycopy.} = object
    Col*: ImGuiCol
    BackupValue*: ImVec4

  ImGuiStyleMod* {.bycopy.} = object
    VarIdx*: ImGuiStyleVar

  INNER_C_UNION_imgui_internal_105* {.bycopy, union.} = object
    BackupInt*: array[2, cint]
    BackupFloat*: array[2, cfloat]

  ImGuiGroupData* {.bycopy.} = object
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

  ImGuiMenuColumns* {.bycopy.} = object
    Spacing*: cfloat
    Width*: cfloat
    NextWidth*: cfloat
    Pos*: array[3, cfloat]
    NextWidths*: array[3, cfloat]

  StbUndoRecord* {.bycopy.} = object
    where*: STB_TEXTEDIT_POSITIONTYPE
    insert_length*: STB_TEXTEDIT_POSITIONTYPE
    delete_length*: STB_TEXTEDIT_POSITIONTYPE
    char_storage*: cint

  StbUndoState* {.bycopy.} = object
    undo_rec*: array[STB_TEXTEDIT_UNDOSTATECOUNT, StbUndoRecord]
    undo_char*: array[STB_TEXTEDIT_UNDOCHARCOUNT, STB_TEXTEDIT_CHARTYPE]
    undo_point*: cshort
    redo_point*: cshort
    undo_char_point*: cint
    redo_char_point*: cint

  STB_TexteditState* {.bycopy.} = object
    cursor*: cint
    select_start*: cint
    select_end*: cint
    insert_mode*: cuchar
    row_count_per_page*: cint
    cursor_at_end_of_line*: cuchar
    initialized*: cuchar
    has_preferred_x*: cuchar
    single_line*: cuchar
    padding1*: cuchar
    padding2*: cuchar
    padding3*: cuchar
    preferred_x*: cfloat
    undostate*: StbUndoState

  ImGuiInputTextState* {.bycopy.} = object
    ID*: ImGuiID
    CurLenW*: cint
    CurLenA*: cint
    TextW*: ImVector[ImWchar]
    TextA*: ImVector[char]
    InitialTextA*: ImVector[char]
    TextAIsValid*: bool
    BufCapacityA*: cint
    ScrollX*: cfloat
    Stb*: STB_TexteditState
    CursorAnim*: cfloat
    CursorFollow*: bool
    SelectedAllMouseLock*: bool
    Edited*: bool
    Flags*: ImGuiInputTextFlags
    UserCallback*: ImGuiInputTextCallback
    UserCallbackData*: pointer

  ImGuiPopupData* {.bycopy.} = object
    PopupId*: ImGuiID
    Window*: ptr ImGuiWindow
    SourceWindow*: ptr ImGuiWindow
    OpenFrameCount*: cint
    OpenParentId*: ImGuiID
    OpenPopupPos*: ImVec2
    OpenMousePos*: ImVec2

  ImGuiNavItemData* {.bycopy.} = object
    Window*: ptr ImGuiWindow
    ID*: ImGuiID
    FocusScopeId*: ImGuiID
    RectRel*: ImRect
    DistBox*: cfloat
    DistCenter*: cfloat
    DistAxial*: cfloat

  ImGuiNextWindowData* {.bycopy.} = object
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

  ImGuiNextItemData* {.bycopy.} = object
    Flags*: ImGuiNextItemDataFlags
    Width*: cfloat
    FocusScopeId*: ImGuiID
    OpenCond*: ImGuiCond
    OpenVal*: bool

  ImGuiShrinkWidthItem* {.bycopy.} = object
    Index*: cint
    Width*: cfloat

  ImGuiPtrOrIndex* {.bycopy.} = object
    Ptr*: pointer
    Index*: cint

  ImGuiOldColumnData* {.bycopy.} = object
    OffsetNorm*: cfloat
    OffsetNormBeforeResize*: cfloat
    Flags*: ImGuiOldColumnFlags
    ClipRect*: ImRect

  ImGuiOldColumns* {.bycopy.} = object
    ID*: ImGuiID
    Flags*: ImGuiOldColumnFlags
    IsFirstFrame*: bool
    IsBeingResized*: bool
    Current*: cint
    Count*: cint
    OffMinX*: cfloat
    OffMaxX*: cfloat
    LineMinY*: cfloat
    LineMaxY*: cfloat
    HostCursorPosY*: cfloat
    HostCursorMaxPosX*: cfloat
    HostInitialClipRect*: ImRect
    HostBackupClipRect*: ImRect
    HostBackupParentWorkRect*: ImRect
    Columns*: ImVector[ImGuiOldColumnData]
    Splitter*: ImDrawListSplitter

  ImGuiViewport* {.bycopy.} = object of RootObj
    Flags*: ImGuiViewportFlags
    Pos*: ImVec2
    Size*: ImVec2
    WorkPos*: ImVec2
    WorkSize*: ImVec2

  ImGuiViewportP* {.bycopy.} = object of ImGuiViewport
    DrawListsLastFrame*: array[2, cint]
    DrawLists*: array[2, ptr ImDrawList]
    DrawDataP*: ImDrawData
    DrawDataBuilder*: ImDrawDataBuilder
    WorkOffsetMin*: ImVec2
    WorkOffsetMax*: ImVec2
    BuildWorkOffsetMin*: ImVec2
    BuildWorkOffsetMax*: ImVec2

  ImGuiWindowSettings* {.bycopy.} = object
    ID*: ImGuiID
    Pos*: ImVec2ih
    Size*: ImVec2ih
    Collapsed*: bool
    WantApply*: bool

  ImGuiSettingsHandler* {.bycopy.} = object
    TypeName*: cstring
    TypeHash*: ImGuiID
    ClearAllFn*: proc(ctx: ptr ImGuiContext; handler: ptr ImGuiSettingsHandler)
    ReadInitFn*: proc(ctx: ptr ImGuiContext; handler: ptr ImGuiSettingsHandler)
    ReadOpenFn*: proc(ctx: ptr ImGuiContext; handler: ptr ImGuiSettingsHandler; name: cstring): pointer
    ReadLineFn*: proc(ctx: ptr ImGuiContext; handler: ptr ImGuiSettingsHandler; entry: pointer; line: cstring)
    ApplyAllFn*: proc(ctx: ptr ImGuiContext; handler: ptr ImGuiSettingsHandler)
    WriteAllFn*: proc(ctx: ptr ImGuiContext; handler: ptr ImGuiSettingsHandler; out_buf: ptr ImGuiTextBuffer)
    UserData*: pointer

  ImGuiMetricsConfig* {.bycopy.} = object
    ShowWindowsRects*: bool
    ShowWindowsBeginOrder*: bool
    ShowTablesRects*: bool
    ShowDrawCmdMesh*: bool
    ShowDrawCmdBoundingBoxes*: bool
    ShowWindowsRectsType*: cint
    ShowTablesRectsType*: cint

  ImGuiStackSizes* {.bycopy.} = object
    SizeOfIDStack*: cshort
    SizeOfColorStack*: cshort
    SizeOfStyleVarStack*: cshort
    SizeOfFontStack*: cshort
    SizeOfFocusScopeStack*: cshort
    SizeOfGroupStack*: cshort
    SizeOfBeginPopupStack*: cshort

  ImGuiContextHookCallback* = proc(ctx: ptr ImGuiContext; hook: ptr ImGuiContextHook)
  ImGuiContextHook* {.bycopy.} = object
    HookId*: ImGuiID
    Type*: ImGuiContextHookType
    Owner*: ImGuiID
    Callback*: ImGuiContextHookCallback
    UserData*: pointer

  ImGuiContext* {.bycopy.} = object
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
    NavMoveDir*: ImGuiDir
    NavMoveDirLast*: ImGuiDir
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
    ClipboardHandlerData*: ImVector[char]
    MenusIdSubmittedThisFrame*: ImVector[ImGuiID]
    PlatformImePos*: ImVec2
    PlatformImeLastPos*: ImVec2
    PlatformLocaleDecimalPoint*: char
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
    TempBuffer*: array[1024 * 3 + 1, char]

  ImGuiWindowTempData* {.bycopy.} = object
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

  ImGuiWindow* {.bycopy.} = object
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
    ScrollbarX*: bool
    ScrollbarY*: bool
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
    AutoFitFramesX*: ImS8
    AutoFitFramesY*: ImS8
    AutoFitChildAxises*: ImS8
    AutoFitOnlyGrows*: bool
    AutoPosLastDirection*: ImGuiDir
    HiddenFramesCanSkipItems*: ImS8
    HiddenFramesCannotSkipItems*: ImS8
    HiddenFramesForRenderOnly*: ImS8
    DisableInputsFrames*: ImS8
    SetWindowPosAllowFlags* {.bitsize: 8.}: ImGuiCond
    SetWindowSizeAllowFlags* {.bitsize: 8.}: ImGuiCond
    SetWindowCollapsedAllowFlags* {.bitsize: 8.}: ImGuiCond
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

  ImGuiLastItemDataBackup* {.bycopy.} = object
    LastItemId*: ImGuiID
    LastItemStatusFlags*: ImGuiItemStatusFlags
    LastItemRect*: ImRect
    LastItemDisplayRect*: ImRect

  ImGuiTabItem* {.bycopy.} = object
    ID*: ImGuiID
    Flags*: ImGuiTabItemFlags
    LastFrameVisible*: cint
    LastFrameSelected*: cint
    Offset*: cfloat
    Width*: cfloat
    ContentWidth*: cfloat
    NameOffset*: ImS16
    BeginOrder*: ImS16
    IndexDuringLayout*: ImS16
    WantClose*: bool

  ImGuiTabBar* {.bycopy.} = object
    Tabs*: ImVector[ImGuiTabItem]
    Flags*: ImGuiTabBarFlags
    ID*: ImGuiID
    SelectedTabId*: ImGuiID
    NextSelectedTabId*: ImGuiID
    VisibleTabId*: ImGuiID
    CurrFrameVisible*: cint
    PrevFrameVisible*: cint
    BarRect*: ImRect
    CurrTabsContentsHeight*: cfloat
    PrevTabsContentsHeight*: cfloat
    WidthAllTabs*: cfloat
    WidthAllTabsIdeal*: cfloat
    ScrollingAnim*: cfloat
    ScrollingTarget*: cfloat
    ScrollingTargetDistToVisibility*: cfloat
    ScrollingSpeed*: cfloat
    ScrollingRectMinX*: cfloat
    ScrollingRectMaxX*: cfloat
    ReorderRequestTabId*: ImGuiID
    ReorderRequestOffset*: ImS16
    BeginCount*: ImS8
    WantLayout*: bool
    VisibleTabWasSubmitted*: bool
    TabsAddedNew*: bool
    TabsActiveCount*: ImS16
    LastTabItemIdx*: ImS16
    ItemSpacingY*: cfloat
    FramePadding*: ImVec2
    BackupCursorPos*: ImVec2
    TabsNames*: ImGuiTextBuffer

  ImGuiTableColumnIdx* = ImS8
  ImGuiTableDrawChannelIdx* = ImU8
  ImGuiTableColumn* {.bycopy.} = object
    Flags*: ImGuiTableColumnFlags
    WidthGiven*: cfloat
    MinX*: cfloat
    MaxX*: cfloat
    WidthRequest*: cfloat
    WidthAuto*: cfloat
    StretchWeight*: cfloat
    InitStretchWeightOrWidth*: cfloat
    ClipRect*: ImRect
    UserID*: ImGuiID
    WorkMinX*: cfloat
    WorkMaxX*: cfloat
    ItemWidth*: cfloat
    ContentMaxXFrozen*: cfloat
    ContentMaxXUnfrozen*: cfloat
    ContentMaxXHeadersUsed*: cfloat
    ContentMaxXHeadersIdeal*: cfloat
    NameOffset*: ImS16
    DisplayOrder*: ImGuiTableColumnIdx
    IndexWithinEnabledSet*: ImGuiTableColumnIdx
    PrevEnabledColumn*: ImGuiTableColumnIdx
    NextEnabledColumn*: ImGuiTableColumnIdx
    SortOrder*: ImGuiTableColumnIdx
    DrawChannelCurrent*: ImGuiTableDrawChannelIdx
    DrawChannelFrozen*: ImGuiTableDrawChannelIdx
    DrawChannelUnfrozen*: ImGuiTableDrawChannelIdx
    IsEnabled*: bool
    IsEnabledNextFrame*: bool
    IsVisibleX*: bool
    IsVisibleY*: bool
    IsRequestOutput*: bool
    IsSkipItems*: bool
    IsPreserveWidthAuto*: bool
    NavLayerCurrent*: ImS8
    AutoFitQueue*: ImU8
    CannotSkipItemsQueue*: ImU8
    SortDirection* {.bitsize: 2.}: ImU8
    SortDirectionsAvailCount* {.bitsize: 2.}: ImU8
    SortDirectionsAvailMask* {.bitsize: 4.}: ImU8
    SortDirectionsAvailList*: ImU8

  ImGuiTableCellData* {.bycopy.} = object
    BgColor*: ImU32
    Column*: ImGuiTableColumnIdx

  ImGuiTable* {.bycopy.} = object
    ID*: ImGuiID
    Flags*: ImGuiTableFlags
    RawData*: pointer
    TempData*: ptr ImGuiTableTempData
    Columns*: ImSpan[ImGuiTableColumn]
    DisplayOrderToIndex*: ImSpan[ImGuiTableColumnIdx]
    RowCellData*: ImSpan[ImGuiTableCellData]
    EnabledMaskByDisplayOrder*: ImU64
    EnabledMaskByIndex*: ImU64
    VisibleMaskByIndex*: ImU64
    RequestOutputMaskByIndex*: ImU64
    SettingsLoadedFlags*: ImGuiTableFlags
    SettingsOffset*: cint
    LastFrameActive*: cint
    ColumnsCount*: cint
    CurrentRow*: cint
    CurrentColumn*: cint
    InstanceCurrent*: ImS16
    InstanceInteracted*: ImS16
    RowPosY1*: cfloat
    RowPosY2*: cfloat
    RowMinHeight*: cfloat
    RowTextBaseline*: cfloat
    RowIndentOffsetX*: cfloat
    RowFlags* {.bitsize: 16.}: ImGuiTableRowFlags
    LastRowFlags* {.bitsize: 16.}: ImGuiTableRowFlags
    RowBgColorCounter*: cint
    RowBgColor*: array[2, ImU32]
    BorderColorStrong*: ImU32
    BorderColorLight*: ImU32
    BorderX1*: cfloat
    BorderX2*: cfloat
    HostIndentX*: cfloat
    MinColumnWidth*: cfloat
    OuterPaddingX*: cfloat
    CellPaddingX*: cfloat
    CellPaddingY*: cfloat
    CellSpacingX1*: cfloat
    CellSpacingX2*: cfloat
    LastOuterHeight*: cfloat
    LastFirstRowHeight*: cfloat
    InnerWidth*: cfloat
    ColumnsGivenWidth*: cfloat
    ColumnsAutoFitWidth*: cfloat
    ResizedColumnNextWidth*: cfloat
    ResizeLockMinContentsX2*: cfloat
    RefScale*: cfloat
    OuterRect*: ImRect
    InnerRect*: ImRect
    WorkRect*: ImRect
    InnerClipRect*: ImRect
    BgClipRect*: ImRect
    Bg0ClipRectForDrawCmd*: ImRect
    Bg2ClipRectForDrawCmd*: ImRect
    HostClipRect*: ImRect
    HostBackupInnerClipRect*: ImRect
    OuterWindow*: ptr ImGuiWindow
    InnerWindow*: ptr ImGuiWindow
    ColumnsNames*: ImGuiTextBuffer
    DrawSplitter*: ptr ImDrawListSplitter
    SortSpecs*: ImGuiTableSortSpecs
    SortSpecsCount*: ImGuiTableColumnIdx
    ColumnsEnabledCount*: ImGuiTableColumnIdx
    ColumnsEnabledFixedCount*: ImGuiTableColumnIdx
    DeclColumnsCount*: ImGuiTableColumnIdx
    HoveredColumnBody*: ImGuiTableColumnIdx
    HoveredColumnBorder*: ImGuiTableColumnIdx
    AutoFitSingleColumn*: ImGuiTableColumnIdx
    ResizedColumn*: ImGuiTableColumnIdx
    LastResizedColumn*: ImGuiTableColumnIdx
    HeldHeaderColumn*: ImGuiTableColumnIdx
    ReorderColumn*: ImGuiTableColumnIdx
    ReorderColumnDir*: ImGuiTableColumnIdx
    LeftMostEnabledColumn*: ImGuiTableColumnIdx
    RightMostEnabledColumn*: ImGuiTableColumnIdx
    LeftMostStretchedColumn*: ImGuiTableColumnIdx
    RightMostStretchedColumn*: ImGuiTableColumnIdx
    ContextPopupColumn*: ImGuiTableColumnIdx
    FreezeRowsRequest*: ImGuiTableColumnIdx
    FreezeRowsCount*: ImGuiTableColumnIdx
    FreezeColumnsRequest*: ImGuiTableColumnIdx
    FreezeColumnsCount*: ImGuiTableColumnIdx
    RowCellDataCurrent*: ImGuiTableColumnIdx
    DummyDrawChannel*: ImGuiTableDrawChannelIdx
    Bg2DrawChannelCurrent*: ImGuiTableDrawChannelIdx
    Bg2DrawChannelUnfrozen*: ImGuiTableDrawChannelIdx
    IsLayoutLocked*: bool
    IsInsideRow*: bool
    IsInitializing*: bool
    IsSortSpecsDirty*: bool
    IsUsingHeaders*: bool
    IsContextPopupOpen*: bool
    IsSettingsRequestLoad*: bool
    IsSettingsDirty*: bool
    IsDefaultDisplayOrder*: bool
    IsResetAllRequest*: bool
    IsResetDisplayOrderRequest*: bool
    IsUnfrozenRows*: bool
    IsDefaultSizingPolicy*: bool
    MemoryCompacted*: bool
    HostSkipItems*: bool

  ImGuiTableTempData* {.bycopy.} = object
    TableIndex*: cint
    LastTimeActive*: cfloat
    UserOuterSize*: ImVec2
    DrawSplitter*: ImDrawListSplitter
    SortSpecsSingle*: ImGuiTableColumnSortSpecs
    SortSpecsMulti*: ImVector[ImGuiTableColumnSortSpecs]
    HostBackupWorkRect*: ImRect
    HostBackupParentWorkRect*: ImRect
    HostBackupPrevLineSize*: ImVec2
    HostBackupCurrLineSize*: ImVec2
    HostBackupCursorMaxPos*: ImVec2
    HostBackupColumnsOffset*: ImVec1
    HostBackupItemWidth*: cfloat
    HostBackupItemWidthStackSize*: cint

  ImGuiTableColumnSettings* {.bycopy.} = object
    WidthOrWeight*: cfloat
    UserID*: ImGuiID
    Index*: ImGuiTableColumnIdx
    DisplayOrder*: ImGuiTableColumnIdx
    SortOrder*: ImGuiTableColumnIdx
    SortDirection*: ImU8
    IsEnabled*: ImU8
    IsStretch*: ImU8

  ImGuiTableSettings* {.bycopy.} = object
    ID*: ImGuiID
    SaveFlags*: ImGuiTableFlags
    RefScale*: cfloat
    ColumnsCount*: ImGuiTableColumnIdx
    ColumnsCountMax*: ImGuiTableColumnIdx
    WantApply*: bool

{.push importc, cdecl.}

proc FindWindowByID*(id: ImGuiID): ptr ImGuiWindow
proc FindWindowByName*(name: cstring): ptr ImGuiWindow
proc UpdateWindowParentAndRootLinks*(window: ptr ImGuiWindow; flags: ImGuiWindowFlags; parent_window: ptr ImGuiWindow)
proc CalcWindowNextAutoFitSize*(window: ptr ImGuiWindow): ImVec2
proc IsWindowChildOf*(window: ptr ImGuiWindow; potential_parent: ptr ImGuiWindow): bool
proc IsWindowAbove*(potential_above: ptr ImGuiWindow; potential_below: ptr ImGuiWindow): bool
proc IsWindowNavFocusable*(window: ptr ImGuiWindow): bool
proc GetWindowAllowedExtentRect*(window: ptr ImGuiWindow): ImRect
proc SetWindowPos*(window: ptr ImGuiWindow; pos: ImVec2; cond: ImGuiCond = ImGuiCond_None)
proc SetWindowSize*(window: ptr ImGuiWindow; size: ImVec2; cond: ImGuiCond = ImGuiCond_None)
proc SetWindowCollapsed*(window: ptr ImGuiWindow; collapsed: bool; cond: ImGuiCond = ImGuiCond_None)
proc SetWindowHitTestHole*(window: ptr ImGuiWindow; pos: ImVec2; size: ImVec2)
proc FocusWindow*(window: ptr ImGuiWindow)
proc FocusTopMostWindowUnderOne*(under_this_window: ptr ImGuiWindow; ignore_window: ptr ImGuiWindow)
proc BringWindowToFocusFront*(window: ptr ImGuiWindow)
proc BringWindowToDisplayFront*(window: ptr ImGuiWindow)
proc BringWindowToDisplayBack*(window: ptr ImGuiWindow)
proc SetCurrentFont*(font: ptr ImFont)
proc GetBackgroundDrawList*(viewport: ptr ImGuiViewport): ptr ImDrawList
proc GetForegroundDrawList*(viewport: ptr ImGuiViewport): ptr ImDrawList
proc Initialize*(context: ptr ImGuiContext)
proc Shutdown*(context: ptr ImGuiContext)
proc UpdateHoveredWindowAndCaptureFlags*()
proc StartMouseMovingWindow*(window: ptr ImGuiWindow)
proc UpdateMouseMovingWindowNewFrame*()
proc UpdateMouseMovingWindowEndFrame*()
proc AddContextHook*(context: ptr ImGuiContext; hook: ptr ImGuiContextHook): ImGuiID
proc RemoveContextHook*(context: ptr ImGuiContext; hook_to_remove: ImGuiID)
proc CallContextHooks*(context: ptr ImGuiContext; `type`: ImGuiContextHookType)
proc MarkIniSettingsDirty*()
proc MarkIniSettingsDirty*(window: ptr ImGuiWindow)
proc ClearIniSettings*()
proc CreateNewWindowSettings*(name: cstring): ptr ImGuiWindowSettings
proc FindWindowSettings*(id: ImGuiID): ptr ImGuiWindowSettings
proc FindOrCreateWindowSettings*(name: cstring): ptr ImGuiWindowSettings
proc FindSettingsHandler*(type_name: cstring): ptr ImGuiSettingsHandler
proc SetNextWindowScroll*(scroll: ImVec2)
proc SetScrollX*(window: ptr ImGuiWindow; scroll_x: cfloat)
proc SetScrollY*(window: ptr ImGuiWindow; scroll_y: cfloat)
proc SetScrollFromPosX*(window: ptr ImGuiWindow; local_x: cfloat; center_x_ratio: cfloat)
proc SetScrollFromPosY*(window: ptr ImGuiWindow; local_y: cfloat; center_y_ratio: cfloat)
proc ScrollToBringRectIntoView*(window: ptr ImGuiWindow; item_rect: ImRect): ImVec2
proc SetActiveID*(id: ImGuiID; window: ptr ImGuiWindow)
proc SetFocusID*(id: ImGuiID; window: ptr ImGuiWindow)
proc ClearActiveID*()
proc GetHoveredID*(): ImGuiID
proc SetHoveredID*(id: ImGuiID)
proc KeepAliveID*(id: ImGuiID)
proc MarkItemEdited*(id: ImGuiID)
proc PushOverrideID*(id: ImGuiID)
proc GetIDWithSeed*(str_id_begin: cstring; str_id_end: cstring; seed: ImGuiID): ImGuiID
proc ItemSize*(size: ImVec2; text_baseline_y: cfloat = -1.0f)
proc ItemSize*(bb: ImRect; text_baseline_y: cfloat = -1.0f)
proc ItemAdd*(bb: ImRect; id: ImGuiID; nav_bb: ptr ImRect = nil; flags: ImGuiItemAddFlags = ImGuiItemAddFlags_None): bool
proc ItemHoverable*(bb: ImRect; id: ImGuiID): bool
proc ItemFocusable*(window: ptr ImGuiWindow; id: ImGuiID)
proc IsClippedEx*(bb: ImRect; id: ImGuiID; clip_even_when_logged: bool): bool
proc SetLastItemData*(window: ptr ImGuiWindow; item_id: ImGuiID; status_flags: ImGuiItemStatusFlags; item_rect: ImRect)
proc CalcItemSize*(size: ImVec2; default_w: cfloat; default_h: cfloat): ImVec2
proc CalcWrapWidthForPos*(pos: ImVec2; wrap_pos_x: cfloat): cfloat
proc PushMultiItemsWidths*(components: cint; width_full: cfloat)
proc PushItemFlag*(option: ImGuiItemFlags; enabled: bool)
proc PopItemFlag*()
proc IsItemToggledSelection*(): bool
proc GetContentRegionMaxAbs*(): ImVec2
proc ShrinkWidths*(items: ptr ImGuiShrinkWidthItem; count: cint; width_excess: cfloat)
proc LogBegin*(`type`: ImGuiLogType; auto_open_depth: cint)
proc LogToBuffer*(auto_open_depth: cint = -1)
proc LogRenderedText*(ref_pos: ptr ImVec2; text: cstring; text_end: cstring = nil)
proc LogSetNextTextDecoration*(prefix: cstring; suffix: cstring)
proc BeginChildEx*(name: cstring; id: ImGuiID; size_arg: ImVec2; border: bool; flags: ImGuiWindowFlags): bool
proc OpenPopupEx*(id: ImGuiID; popup_flags: ImGuiPopupFlags = ImGuiPopupFlags_None)
proc ClosePopupToLevel*(remaining: cint; restore_focus_to_window_under_popup: bool)
proc ClosePopupsOverWindow*(ref_window: ptr ImGuiWindow; restore_focus_to_window_under_popup: bool)
proc IsPopupOpen*(id: ImGuiID; popup_flags: ImGuiPopupFlags): bool
proc BeginPopupEx*(id: ImGuiID; extra_flags: ImGuiWindowFlags): bool
proc BeginTooltipEx*(extra_flags: ImGuiWindowFlags; tooltip_flags: ImGuiTooltipFlags)
proc GetTopMostPopupModal*(): ptr ImGuiWindow
proc FindBestWindowPosForPopup*(window: ptr ImGuiWindow): ImVec2
proc FindBestWindowPosForPopupEx*(ref_pos: ImVec2; size: ImVec2; last_dir: ptr ImGuiDir; r_outer: ImRect; r_avoid: ImRect; policy: ImGuiPopupPositionPolicy): ImVec2
proc BeginViewportSideBar*(name: cstring; viewport: ptr ImGuiViewport; dir: ImGuiDir; size: cfloat; window_flags: ImGuiWindowFlags): bool
proc NavInitWindow*(window: ptr ImGuiWindow; force_reinit: bool)
proc NavMoveRequestButNoResultYet*(): bool
proc NavMoveRequestCancel*()
proc NavMoveRequestForward*(move_dir: ImGuiDir; clip_dir: ImGuiDir; bb_rel: ImRect; move_flags: ImGuiNavMoveFlags)
proc NavMoveRequestTryWrapping*(window: ptr ImGuiWindow; move_flags: ImGuiNavMoveFlags)
proc GetNavInputAmount*(n: ImGuiNavInput; mode: ImGuiInputReadMode): cfloat
proc GetNavInputAmount2d*(dir_sources: ImGuiNavDirSourceFlags; mode: ImGuiInputReadMode; slow_factor: cfloat = 0.0f; fast_factor: cfloat = 0.0f): ImVec2
proc CalcTypematicRepeatAmount*(t0: cfloat; t1: cfloat; repeat_delay: cfloat; repeat_rate: cfloat): cint
proc ActivateItem*(id: ImGuiID)
proc SetNavID*(id: ImGuiID; nav_layer: ImGuiNavLayer; focus_scope_id: ImGuiID; rect_rel: ImRect)
proc PushFocusScope*(id: ImGuiID)
proc PopFocusScope*()
proc SetItemUsingMouseWheel*()
proc IsMouseDragPastThreshold*(button: ImGuiMouseButton; lock_threshold: cfloat = -1.0f): bool
proc GetMergedKeyModFlags*(): ImGuiKeyModFlags
proc BeginDragDropTargetCustom*(bb: ImRect; id: ImGuiID): bool
proc ClearDragDrop*()
proc IsDragDropPayloadBeingAccepted*(): bool
proc SetWindowClipRectBeforeSetChannel*(window: ptr ImGuiWindow; clip_rect: ImRect)
proc BeginColumns*(str_id: cstring; count: cint; flags: ImGuiOldColumnFlags = ImGuiOldColumnFlags_None)
proc EndColumns*()
proc PushColumnClipRect*(column_index: cint)
proc PushColumnsBackground*()
proc PopColumnsBackground*()
proc GetColumnsID*(str_id: cstring; count: cint): ImGuiID
proc FindOrCreateColumns*(window: ptr ImGuiWindow; id: ImGuiID): ptr ImGuiOldColumns
proc GetColumnOffsetFromNorm*(columns: ptr ImGuiOldColumns; offset_norm: cfloat): cfloat
proc GetColumnNormFromOffset*(columns: ptr ImGuiOldColumns; offset: cfloat): cfloat
proc TableOpenContextMenu*(column_n: cint = -1)
proc TableSetColumnWidth*(column_n: cint; width: cfloat)
proc TableSetColumnSortDirection*(column_n: cint; sort_direction: ImGuiSortDirection; append_to_sort_specs: bool)
proc TableGetHoveredColumn*(): cint
proc TableGetHeaderRowHeight*(): cfloat
proc TablePushBackgroundChannel*()
proc TablePopBackgroundChannel*()
proc TableFindByID*(id: ImGuiID): ptr ImGuiTable
proc BeginTableEx*(name: cstring; id: ImGuiID; columns_count: cint; flags: ImGuiTableFlags = ImGuiTableFlags_None; outer_size: ImVec2 = ImVec2(x: 0, y: 0); inner_width: cfloat = 0.0f): bool
proc TableBeginInitMemory*(table: ptr ImGuiTable; columns_count: cint)
proc TableBeginApplyRequests*(table: ptr ImGuiTable)
proc TableSetupDrawChannels*(table: ptr ImGuiTable)
proc TableUpdateLayout*(table: ptr ImGuiTable)
proc TableUpdateBorders*(table: ptr ImGuiTable)
proc TableUpdateColumnsWeightFromWidth*(table: ptr ImGuiTable)
proc TableDrawBorders*(table: ptr ImGuiTable)
proc TableDrawContextMenu*(table: ptr ImGuiTable)
proc TableMergeDrawChannels*(table: ptr ImGuiTable)
proc TableSortSpecsSanitize*(table: ptr ImGuiTable)
proc TableSortSpecsBuild*(table: ptr ImGuiTable)
proc TableGetColumnNextSortDirection*(column: ptr ImGuiTableColumn): ImGuiSortDirection
proc TableFixColumnSortDirection*(table: ptr ImGuiTable; column: ptr ImGuiTableColumn)
proc TableGetColumnWidthAuto*(table: ptr ImGuiTable; column: ptr ImGuiTableColumn): cfloat
proc TableBeginRow*(table: ptr ImGuiTable)
proc TableEndRow*(table: ptr ImGuiTable)
proc TableBeginCell*(table: ptr ImGuiTable; column_n: cint)
proc TableEndCell*(table: ptr ImGuiTable)
proc TableGetCellBgRect*(table: ptr ImGuiTable; column_n: cint): ImRect
proc TableGetColumnName*(table: ptr ImGuiTable; column_n: cint): cstring
proc TableGetColumnResizeID*(table: ptr ImGuiTable; column_n: cint; instance_no: cint = 0): ImGuiID
proc TableGetMaxColumnWidth*(table: ptr ImGuiTable; column_n: cint): cfloat
proc TableSetColumnWidthAutoSingle*(table: ptr ImGuiTable; column_n: cint)
proc TableSetColumnWidthAutoAll*(table: ptr ImGuiTable)
proc TableRemove*(table: ptr ImGuiTable)
proc TableGcCompactTransientBuffers*(table: ptr ImGuiTable)
proc TableGcCompactTransientBuffers*(table: ptr ImGuiTableTempData)
proc TableGcCompactSettings*()
proc TableLoadSettings*(table: ptr ImGuiTable)
proc TableSaveSettings*(table: ptr ImGuiTable)
proc TableResetSettings*(table: ptr ImGuiTable)
proc TableGetBoundSettings*(table: ptr ImGuiTable): ptr ImGuiTableSettings
proc TableSettingsInstallHandler*(context: ptr ImGuiContext)
proc TableSettingsCreate*(id: ImGuiID; columns_count: cint): ptr ImGuiTableSettings
proc TableSettingsFindByID*(id: ImGuiID): ptr ImGuiTableSettings
proc BeginTabBarEx*(tab_bar: ptr ImGuiTabBar; bb: ImRect; flags: ImGuiTabBarFlags): bool
proc TabBarFindTabByID*(tab_bar: ptr ImGuiTabBar; tab_id: ImGuiID): ptr ImGuiTabItem
proc TabBarRemoveTab*(tab_bar: ptr ImGuiTabBar; tab_id: ImGuiID)
proc TabBarCloseTab*(tab_bar: ptr ImGuiTabBar; tab: ptr ImGuiTabItem)
proc TabBarQueueReorder*(tab_bar: ptr ImGuiTabBar; tab: ptr ImGuiTabItem; offset: cint)
proc TabBarQueueReorderFromMousePos*(tab_bar: ptr ImGuiTabBar; tab: ptr ImGuiTabItem; mouse_pos: ImVec2)
proc TabBarProcessReorder*(tab_bar: ptr ImGuiTabBar): bool
proc TabItemEx*(tab_bar: ptr ImGuiTabBar; label: cstring; p_open: ptr bool; flags: ImGuiTabItemFlags): bool
proc TabItemCalcSize*(label: cstring; has_close_button: bool): ImVec2
proc TabItemBackground*(draw_list: ptr ImDrawList; bb: ImRect; flags: ImGuiTabItemFlags; col: ImU32)
proc TabItemLabelAndCloseButton*(draw_list: ptr ImDrawList; bb: ImRect; flags: ImGuiTabItemFlags; frame_padding: ImVec2; label: cstring; tab_id: ImGuiID; close_button_id: ImGuiID; is_contents_visible: bool; out_just_closed: ptr bool; out_text_clipped: ptr bool)
proc RenderText*(pos: ImVec2; text: cstring; text_end: cstring = nil; hide_text_after_hash: bool = true)
proc RenderTextWrapped*(pos: ImVec2; text: cstring; text_end: cstring; wrap_width: cfloat)
proc RenderTextClipped*(pos_min: ImVec2; pos_max: ImVec2; text: cstring; text_end: cstring; text_size_if_known: ptr ImVec2; align: ImVec2 = ImVec2(x: 0, y: 0); clip_rect: ptr ImRect = nil)
proc RenderTextClippedEx*(draw_list: ptr ImDrawList; pos_min: ImVec2; pos_max: ImVec2; text: cstring; text_end: cstring; text_size_if_known: ptr ImVec2; align: ImVec2 = ImVec2(x: 0, y: 0); clip_rect: ptr ImRect = nil)
proc RenderTextEllipsis*(draw_list: ptr ImDrawList; pos_min: ImVec2; pos_max: ImVec2; clip_max_x: cfloat; ellipsis_max_x: cfloat; text: cstring; text_end: cstring; text_size_if_known: ptr ImVec2)
proc RenderFrame*(p_min: ImVec2; p_max: ImVec2; fill_col: ImU32; border: bool = true; rounding: cfloat = 0.0f)
proc RenderFrameBorder*(p_min: ImVec2; p_max: ImVec2; rounding: cfloat = 0.0f)
proc RenderColorRectWithAlphaCheckerboard*(draw_list: ptr ImDrawList; p_min: ImVec2; p_max: ImVec2; fill_col: ImU32; grid_step: cfloat; grid_off: ImVec2; rounding: cfloat = 0.0f; flags: ImDrawFlags = ImDrawFlags_None)
proc RenderNavHighlight*(bb: ImRect; id: ImGuiID; flags: ImGuiNavHighlightFlags = ImGuiNavHighlightFlags_TypeDefault)
proc FindRenderedTextEnd*(text: cstring; text_end: cstring = nil): cstring
proc RenderArrow*(draw_list: ptr ImDrawList; pos: ImVec2; col: ImU32; dir: ImGuiDir; scale: cfloat = 1.0f)
proc RenderBullet*(draw_list: ptr ImDrawList; pos: ImVec2; col: ImU32)
proc RenderCheckMark*(draw_list: ptr ImDrawList; pos: ImVec2; col: ImU32; sz: cfloat)
proc RenderMouseCursor*(draw_list: ptr ImDrawList; pos: ImVec2; scale: cfloat; mouse_cursor: ImGuiMouseCursor; col_fill: ImU32; col_border: ImU32; col_shadow: ImU32)
proc RenderArrowPointingAt*(draw_list: ptr ImDrawList; pos: ImVec2; half_sz: ImVec2; direction: ImGuiDir; col: ImU32)
proc RenderRectFilledRangeH*(draw_list: ptr ImDrawList; rect: ImRect; col: ImU32; x_start_norm: cfloat; x_end_norm: cfloat; rounding: cfloat)
proc RenderRectFilledWithHole*(draw_list: ptr ImDrawList; outer: ImRect; inner: ImRect; col: ImU32; rounding: cfloat)
proc TextEx*(text: cstring; text_end: cstring = nil; flags: ImGuiTextFlags = ImGuiTextFlags_None)
proc ButtonEx*(label: cstring; size_arg: ImVec2 = ImVec2(x: 0, y: 0); flags: ImGuiButtonFlags = ImGuiButtonFlags_None): bool
proc CloseButton*(id: ImGuiID; pos: ImVec2): bool
proc CollapseButton*(id: ImGuiID; pos: ImVec2): bool
proc ArrowButtonEx*(str_id: cstring; dir: ImGuiDir; size_arg: ImVec2; flags: ImGuiButtonFlags = ImGuiButtonFlags_None): bool
proc Scrollbar*(axis: ImGuiAxis)
proc ScrollbarEx*(bb: ImRect; id: ImGuiID; axis: ImGuiAxis; p_scroll_v: ptr cfloat; avail_v: cfloat; contents_v: cfloat; flags: ImDrawFlags): bool
proc ImageButtonEx*(id: ImGuiID; texture_id: ImTextureID; size: ImVec2; uv0: ImVec2; uv1: ImVec2; padding: ImVec2; bg_col: ImVec4; tint_col: ImVec4): bool
proc GetWindowScrollbarRect*(window: ptr ImGuiWindow; axis: ImGuiAxis): ImRect
proc GetWindowScrollbarID*(window: ptr ImGuiWindow; axis: ImGuiAxis): ImGuiID
proc GetWindowResizeCornerID*(window: ptr ImGuiWindow; n: cint): ImGuiID
proc GetWindowResizeBorderID*(window: ptr ImGuiWindow; dir: ImGuiDir): ImGuiID
proc SeparatorEx*(flags: ImGuiSeparatorFlags)
proc CheckboxFlags*(label: cstring; flags: ptr ImS64; flags_value: ImS64): bool
proc CheckboxFlags*(label: cstring; flags: ptr ImU64; flags_value: ImU64): bool
proc ButtonBehavior*(bb: ImRect; id: ImGuiID; out_hovered: ptr bool; out_held: ptr bool; flags: ImGuiButtonFlags = ImGuiButtonFlags_None): bool
proc DragBehavior*(id: ImGuiID; data_type: ImGuiDataType; p_v: pointer; v_speed: cfloat; p_min: pointer; p_max: pointer; format: cstring; flags: ImGuiSliderFlags): bool
proc SliderBehavior*(bb: ImRect; id: ImGuiID; data_type: ImGuiDataType; p_v: pointer; p_min: pointer; p_max: pointer; format: cstring; flags: ImGuiSliderFlags; out_grab_bb: ptr ImRect): bool
proc SplitterBehavior*(bb: ImRect; id: ImGuiID; axis: ImGuiAxis; size1: ptr cfloat; size2: ptr cfloat; min_size1: cfloat; min_size2: cfloat; hover_extend: cfloat = 0.0f; hover_visibility_delay: cfloat = 0.0f): bool
proc TreeNodeBehavior*(id: ImGuiID; flags: ImGuiTreeNodeFlags; label: cstring; label_end: cstring = nil): bool
proc TreeNodeBehaviorIsOpen*(id: ImGuiID; flags: ImGuiTreeNodeFlags = ImGuiTreeNodeFlags_None): bool
proc TreePushOverrideID*(id: ImGuiID)
proc ScaleRatioFromValueT*[T; SIGNED_T; FLOAT_T](data_type: ImGuiDataType; v: T; v_min: T; v_max: T; is_logarithmic: bool; logarithmic_zero_epsilon: cfloat; zero_deadzone_size: cfloat): cfloat
proc ScaleValueFromRatioT*[T; SIGNED_T; FLOAT_T](data_type: ImGuiDataType; t: cfloat; v_min: T; v_max: T; is_logarithmic: bool; logarithmic_zero_epsilon: cfloat; zero_deadzone_size: cfloat): T
proc DragBehaviorT*[T; SIGNED_T; FLOAT_T](data_type: ImGuiDataType; v: ptr T; v_speed: cfloat; v_min: T; v_max: T; format: cstring; flags: ImGuiSliderFlags): bool
proc SliderBehaviorT*[T; SIGNED_T; FLOAT_T](bb: ImRect; id: ImGuiID; data_type: ImGuiDataType; v: ptr T; v_min: T; v_max: T; format: cstring; flags: ImGuiSliderFlags; out_grab_bb: ptr ImRect): bool
proc RoundScalarWithFormatT*[T; SIGNED_T](format: cstring; data_type: ImGuiDataType; v: T): T
proc CheckboxFlagsT*[T](label: cstring; flags: ptr T; flags_value: T): bool
proc DataTypeGetInfo*(data_type: ImGuiDataType): ptr ImGuiDataTypeInfo
proc DataTypeFormatString*(buf: cstring; buf_size: cint; data_type: ImGuiDataType; p_data: pointer; format: cstring): cint
proc DataTypeApplyOp*(data_type: ImGuiDataType; op: cint; output: pointer; arg_1: pointer; arg_2: pointer)
proc DataTypeApplyOpFromText*(buf: cstring; initial_value_buf: cstring; data_type: ImGuiDataType; p_data: pointer; format: cstring): bool
proc DataTypeCompare*(data_type: ImGuiDataType; arg_1: pointer; arg_2: pointer): cint
proc DataTypeClamp*(data_type: ImGuiDataType; p_data: pointer; p_min: pointer; p_max: pointer): bool
proc InputTextEx*(label: cstring; hint: cstring; buf: cstring; buf_size: cint; size_arg: ImVec2; flags: ImGuiInputTextFlags; callback: ImGuiInputTextCallback = nil; user_data: pointer = nil): bool
proc TempInputText*(bb: ImRect; id: ImGuiID; label: cstring; buf: cstring; buf_size: cint; flags: ImGuiInputTextFlags): bool
proc TempInputScalar*(bb: ImRect; id: ImGuiID; label: cstring; data_type: ImGuiDataType; p_data: pointer; format: cstring; p_clamp_min: pointer = nil; p_clamp_max: pointer = nil): bool
proc ColorTooltip*(text: cstring; col: ptr cfloat; flags: ImGuiColorEditFlags)
proc ColorEditOptionsPopup*(col: ptr cfloat; flags: ImGuiColorEditFlags)
proc ColorPickerOptionsPopup*(ref_col: ptr cfloat; flags: ImGuiColorEditFlags)
proc PlotEx*(plot_type: ImGuiPlotType; label: cstring; values_getter: proc (data: pointer; idx: cint): cfloat; data: pointer; values_count: cint; values_offset: cint; overlay_text: cstring; scale_min: cfloat; scale_max: cfloat; frame_size: ImVec2): cint
proc ShadeVertsLinearColorGradientKeepAlpha*(draw_list: ptr ImDrawList; vert_start_idx: cint; vert_end_idx: cint; gradient_p0: ImVec2; gradient_p1: ImVec2; col0: ImU32; col1: ImU32)
proc ShadeVertsLinearUV*(draw_list: ptr ImDrawList; vert_start_idx: cint; vert_end_idx: cint; a: ImVec2; b: ImVec2; uv_a: ImVec2; uv_b: ImVec2; clamp: bool)
proc GcCompactTransientMiscBuffers*()
proc GcCompactTransientWindowBuffers*(window: ptr ImGuiWindow)
proc GcAwakeTransientWindowBuffers*(window: ptr ImGuiWindow)
proc ErrorCheckEndFrameRecover*(log_callback: ImGuiErrorLogCallback; user_data: pointer = nil)
proc DebugNodeColumns*(columns: ptr ImGuiOldColumns)
proc DebugNodeDrawList*(window: ptr ImGuiWindow; draw_list: ptr ImDrawList; label: cstring)
proc DebugNodeDrawCmdShowMeshAndBoundingBox*(out_draw_list: ptr ImDrawList; draw_list: ptr ImDrawList; draw_cmd: ptr ImDrawCmd; show_mesh: bool; show_aabb: bool)
proc DebugNodeStorage*(storage: ptr ImGuiStorage; label: cstring)
proc DebugNodeTabBar*(tab_bar: ptr ImGuiTabBar; label: cstring)
proc DebugNodeTable*(table: ptr ImGuiTable)
proc DebugNodeTableSettings*(settings: ptr ImGuiTableSettings)
proc DebugNodeWindow*(window: ptr ImGuiWindow; label: cstring)
proc DebugNodeWindowSettings*(settings: ptr ImGuiWindowSettings)
proc DebugNodeWindowsList*(windows: ptr ImVector[ptr ImGuiWindow]; label: cstring)
proc DebugNodeViewport*(viewport: ptr ImGuiViewportP)
proc DebugRenderViewportThumbnail*(draw_list: ptr ImDrawList; viewport: ptr ImGuiViewportP; bb: ImRect)
proc CreateContext*(shared_font_atlas: ptr ImFontAtlas = nil): ptr ImGuiContext
proc DestroyContext*(ctx: ptr ImGuiContext = nil)
proc GetCurrentContext*(): ptr ImGuiContext
proc SetCurrentContext*(ctx: ptr ImGuiContext)
proc GetIO*(): var ImGuiIO
proc GetStyle*(): var ImGuiStyle
proc NewFrame*()
proc EndFrame*()
proc Render*()
proc GetDrawData*(): ptr ImDrawData
proc ShowDemoWindow*(p_open: ptr bool = nil)
proc ShowMetricsWindow*(p_open: ptr bool = nil)
proc ShowAboutWindow*(p_open: ptr bool = nil)
proc ShowStyleEditor*(`ref`: ptr ImGuiStyle = nil)
proc ShowStyleSelector*(label: cstring): bool
proc ShowFontSelector*(label: cstring)
proc ShowUserGuide*()
proc GetVersion*(): cstring
proc StyleColorsDark*(dst: ptr ImGuiStyle = nil)
proc StyleColorsLight*(dst: ptr ImGuiStyle = nil)
proc StyleColorsClassic*(dst: ptr ImGuiStyle = nil)
proc Begin*(name: cstring; p_open: ptr bool = nil; flags: ImGuiWindowFlags = ImGuiWindowFlags_None): bool
proc End*()
proc BeginChild*(str_id: cstring; size: ImVec2 = ImVec2(x: 0, y: 0); border: bool = false; flags: ImGuiWindowFlags = ImGuiWindowFlags_None): bool
proc BeginChild*(id: ImGuiID; size: ImVec2 = ImVec2(x: 0, y: 0); border: bool = false; flags: ImGuiWindowFlags = ImGuiWindowFlags_None): bool
proc EndChild*()
proc IsWindowAppearing*(): bool
proc IsWindowCollapsed*(): bool
proc IsWindowFocused*(flags: ImGuiFocusedFlags = ImGuiFocusedFlags_None): bool
proc IsWindowHovered*(flags: ImGuiHoveredFlags = ImGuiHoveredFlags_None): bool
proc GetWindowDrawList*(): ptr ImDrawList
proc GetWindowPos*(): ImVec2
proc GetWindowSize*(): ImVec2
proc GetWindowWidth*(): cfloat
proc GetWindowHeight*(): cfloat
proc SetNextWindowPos*(pos: ImVec2; cond: ImGuiCond = ImGuiCond_None; pivot: ImVec2 = ImVec2(x: 0, y: 0))
proc SetNextWindowSize*(size: ImVec2; cond: ImGuiCond = ImGuiCond_None)
proc SetNextWindowSizeConstraints*(size_min: ImVec2; size_max: ImVec2; custom_callback: ImGuiSizeCallback = nil; custom_callback_data: pointer = nil)
proc SetNextWindowContentSize*(size: ImVec2)
proc SetNextWindowCollapsed*(collapsed: bool; cond: ImGuiCond = ImGuiCond_None)
proc SetNextWindowFocus*()
proc SetNextWindowBgAlpha*(alpha: cfloat)
proc SetWindowPos*(pos: ImVec2; cond: ImGuiCond = ImGuiCond_None)
proc SetWindowSize*(size: ImVec2; cond: ImGuiCond = ImGuiCond_None)
proc SetWindowCollapsed*(collapsed: bool; cond: ImGuiCond = ImGuiCond_None)
proc SetWindowFocus*()
proc SetWindowFontScale*(scale: cfloat)
proc SetWindowPos*(name: cstring; pos: ImVec2; cond: ImGuiCond = ImGuiCond_None)
proc SetWindowSize*(name: cstring; size: ImVec2; cond: ImGuiCond = ImGuiCond_None)
proc SetWindowCollapsed*(name: cstring; collapsed: bool; cond: ImGuiCond = ImGuiCond_None)
proc SetWindowFocus*(name: cstring)
proc GetContentRegionAvail*(): ImVec2
proc GetContentRegionMax*(): ImVec2
proc GetWindowContentRegionMin*(): ImVec2
proc GetWindowContentRegionMax*(): ImVec2
proc GetWindowContentRegionWidth*(): cfloat
proc GetScrollX*(): cfloat
proc GetScrollY*(): cfloat
proc SetScrollX*(scroll_x: cfloat)
proc SetScrollY*(scroll_y: cfloat)
proc GetScrollMaxX*(): cfloat
proc GetScrollMaxY*(): cfloat
proc SetScrollHereX*(center_x_ratio: cfloat = 0.5f)
proc SetScrollHereY*(center_y_ratio: cfloat = 0.5f)
proc SetScrollFromPosX*(local_x: cfloat; center_x_ratio: cfloat = 0.5f)
proc SetScrollFromPosY*(local_y: cfloat; center_y_ratio: cfloat = 0.5f)
proc PushFont*(font: ptr ImFont)
proc PopFont*()
proc PushStyleColor*(idx: ImGuiCol; col: ImU32)
proc PushStyleColor*(idx: ImGuiCol; col: ImVec4)
proc PopStyleColor*(count: cint = 1)
proc PushStyleVar*(idx: ImGuiStyleVar; val: cfloat)
proc PushStyleVar*(idx: ImGuiStyleVar; val: ImVec2)
proc PopStyleVar*(count: cint = 1)
proc PushAllowKeyboardFocus*(allow_keyboard_focus: bool)
proc PopAllowKeyboardFocus*()
proc PushButtonRepeat*(repeat: bool)
proc PopButtonRepeat*()
proc PushItemWidth*(item_width: cfloat)
proc PopItemWidth*()
proc SetNextItemWidth*(item_width: cfloat)
proc CalcItemWidth*(): cfloat
proc PushTextWrapPos*(wrap_local_pos_x: cfloat = 0.0f)
proc PopTextWrapPos*()
proc GetFont*(): ptr ImFont
proc GetFontSize*(): cfloat
proc GetFontTexUvWhitePixel*(): ImVec2
proc GetColorU32*(idx: ImGuiCol; alpha_mul: cfloat = 1.0f): ImU32
proc GetColorU32*(col: ImVec4): ImU32
proc GetColorU32*(col: ImU32): ImU32
proc GetStyleColorVec4*(idx: ImGuiCol): var ImVec4
proc Separator*()
proc SameLine*(offset_from_start_x: cfloat = 0.0f; spacing: cfloat = -1.0f)
proc NewLine*()
proc Spacing*()
proc Dummy*(size: ImVec2)
proc Indent*(indent_w: cfloat = 0.0f)
proc Unindent*(indent_w: cfloat = 0.0f)
proc BeginGroup*()
proc EndGroup*()
proc GetCursorPos*(): ImVec2
proc GetCursorPosX*(): cfloat
proc GetCursorPosY*(): cfloat
proc SetCursorPos*(local_pos: ImVec2)
proc SetCursorPosX*(local_x: cfloat)
proc SetCursorPosY*(local_y: cfloat)
proc GetCursorStartPos*(): ImVec2
proc GetCursorScreenPos*(): ImVec2
proc SetCursorScreenPos*(pos: ImVec2)
proc AlignTextToFramePadding*()
proc GetTextLineHeight*(): cfloat
proc GetTextLineHeightWithSpacing*(): cfloat
proc GetFrameHeight*(): cfloat
proc GetFrameHeightWithSpacing*(): cfloat
proc PushID*(str_id: cstring)
proc PushID*(str_id_begin: cstring; str_id_end: cstring)
proc PushID*(ptr_id: pointer)
proc PushID*(int_id: cint)
proc PopID*()
proc GetID*(str_id: cstring): ImGuiID
proc GetID*(str_id_begin: cstring; str_id_end: cstring): ImGuiID
proc GetID*(ptr_id: pointer): ImGuiID
proc TextUnformatted*(text: cstring; text_end: cstring = nil)
proc Button*(label: cstring; size: ImVec2 = ImVec2(x: 0, y: 0)): bool
proc SmallButton*(label: cstring): bool
proc InvisibleButton*(str_id: cstring; size: ImVec2; flags: ImGuiButtonFlags = ImGuiButtonFlags_None): bool
proc ArrowButton*(str_id: cstring; dir: ImGuiDir): bool
proc Image*(user_texture_id: ImTextureID; size: ImVec2; uv0: ImVec2 = ImVec2(x: 0, y: 0); uv1: ImVec2 = ImVec2(x: 1, y: 1); tint_col: ImVec4 = ImVec4(x: 1, y: 1, z: 1, w: 1); border_col: ImVec4 = ImVec4(x: 0, y: 0, z: 0, w: 0))
proc ImageButton*(user_texture_id: ImTextureID; size: ImVec2; uv0: ImVec2 = ImVec2(x: 0, y: 0); uv1: ImVec2 = ImVec2(x: 1, y: 1); frame_padding: cint = -1; bg_col: ImVec4 = ImVec4(x: 0, y: 0, z: 0, w: 0); tint_col: ImVec4 = ImVec4(x: 1, y: 1, z: 1, w: 1)): bool
proc Checkbox*(label: cstring; v: ptr bool): bool
proc CheckboxFlags*(label: cstring; flags: ptr cint; flags_value: cint): bool
proc CheckboxFlags*(label: cstring; flags: ptr cuint; flags_value: cuint): bool
proc RadioButton*(label: cstring; active: bool): bool
proc RadioButton*(label: cstring; v: ptr cint; v_button: cint): bool
proc ProgressBar*(fraction: cfloat; size_arg: ImVec2 = ImVec2(x: -FLT_MIN, y: 0); overlay: cstring = nil)
proc Bullet*()
proc BeginCombo*(label: cstring; preview_value: cstring; flags: ImGuiComboFlags = ImGuiComboFlags_None): bool
proc EndCombo*()
proc Combo*(label: cstring; current_item: ptr cint; items: ptr cstring; items_count: cint; popup_max_height_in_items: cint = -1): bool
proc Combo*(label: cstring; current_item: ptr cint; items_separated_by_zeros: cstring; popup_max_height_in_items: cint = -1): bool
proc Combo*(label: cstring; current_item: ptr cint; items_getter: proc (data: pointer; idx: cint; out_text: cstringArray): bool; data: pointer; items_count: cint; popup_max_height_in_items: cint = -1): bool
proc DragFloat*(label: cstring; v: ptr cfloat; v_speed: cfloat = 1.0f; v_min: cfloat = 0.0f; v_max: cfloat = 0.0f; format: cstring = "%.3f"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragFloat2*(label: cstring; v: array[2, cfloat]; v_speed: cfloat = 1.0f; v_min: cfloat = 0.0f; v_max: cfloat = 0.0f; format: cstring = "%.3f"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragFloat3*(label: cstring; v: array[3, cfloat]; v_speed: cfloat = 1.0f; v_min: cfloat = 0.0f; v_max: cfloat = 0.0f; format: cstring = "%.3f"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragFloat4*(label: cstring; v: array[4, cfloat]; v_speed: cfloat = 1.0f; v_min: cfloat = 0.0f; v_max: cfloat = 0.0f; format: cstring = "%.3f"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragFloatRange2*(label: cstring; v_current_min: ptr cfloat; v_current_max: ptr cfloat; v_speed: cfloat = 1.0f; v_min: cfloat = 0.0f; v_max: cfloat = 0.0f; format: cstring = "%.3f"; format_max: cstring = nil; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragInt*(label: cstring; v: ptr cint; v_speed: cfloat = 1.0f; v_min: cint = 0; v_max: cint = 0; format: cstring = "%d"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragInt2*(label: cstring; v: array[2, cint]; v_speed: cfloat = 1.0f; v_min: cint = 0; v_max: cint = 0; format: cstring = "%d"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragInt3*(label: cstring; v: array[3, cint]; v_speed: cfloat = 1.0f; v_min: cint = 0; v_max: cint = 0; format: cstring = "%d"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragInt4*(label: cstring; v: array[4, cint]; v_speed: cfloat = 1.0f; v_min: cint = 0; v_max: cint = 0; format: cstring = "%d"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragIntRange2*(label: cstring; v_current_min: ptr cint; v_current_max: ptr cint; v_speed: cfloat = 1.0f; v_min: cint = 0; v_max: cint = 0; format: cstring = "%d"; format_max: cstring = nil; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragScalar*(label: cstring; data_type: ImGuiDataType; p_data: pointer; v_speed: cfloat = 1.0f; p_min: pointer = nil; p_max: pointer = nil; format: cstring = nil; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc DragScalarN*(label: cstring; data_type: ImGuiDataType; p_data: pointer; components: cint; v_speed: cfloat = 1.0f; p_min: pointer = nil; p_max: pointer = nil; format: cstring = nil; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderFloat*(label: cstring; v: ptr cfloat; v_min: cfloat; v_max: cfloat; format: cstring = "%.3f"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderFloat2*(label: cstring; v: array[2, cfloat]; v_min: cfloat; v_max: cfloat; format: cstring = "%.3f"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderFloat3*(label: cstring; v: array[3, cfloat]; v_min: cfloat; v_max: cfloat; format: cstring = "%.3f"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderFloat4*(label: cstring; v: array[4, cfloat]; v_min: cfloat; v_max: cfloat; format: cstring = "%.3f"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderAngle*(label: cstring; v_rad: ptr cfloat; v_degrees_min: cfloat = -360.0f; v_degrees_max: cfloat = +360.0f; format: cstring = "%.0f deg"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderInt*(label: cstring; v: ptr cint; v_min: cint; v_max: cint; format: cstring = "%d"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderInt2*(label: cstring; v: array[2, cint]; v_min: cint; v_max: cint; format: cstring = "%d"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderInt3*(label: cstring; v: array[3, cint]; v_min: cint; v_max: cint; format: cstring = "%d"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderInt4*(label: cstring; v: array[4, cint]; v_min: cint; v_max: cint; format: cstring = "%d"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderScalar*(label: cstring; data_type: ImGuiDataType; p_data: pointer; p_min: pointer; p_max: pointer; format: cstring = nil; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc SliderScalarN*(label: cstring; data_type: ImGuiDataType; p_data: pointer; components: cint; p_min: pointer; p_max: pointer; format: cstring = nil; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc VSliderFloat*(label: cstring; size: ImVec2; v: ptr cfloat; v_min: cfloat; v_max: cfloat; format: cstring = "%.3f"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc VSliderInt*(label: cstring; size: ImVec2; v: ptr cint; v_min: cint; v_max: cint; format: cstring = "%d"; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc VSliderScalar*(label: cstring; size: ImVec2; data_type: ImGuiDataType; p_data: pointer; p_min: pointer; p_max: pointer; format: cstring = nil; flags: ImGuiSliderFlags = ImGuiSliderFlags_None): bool
proc InputText*(label: cstring; buf: cstring; buf_size: csize_t; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None; callback: ImGuiInputTextCallback = nil; user_data: pointer = nil): bool
proc InputTextMultiline*(label: cstring; buf: cstring; buf_size: csize_t; size: ImVec2 = ImVec2(x: 0, y: 0); flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None; callback: ImGuiInputTextCallback = nil; user_data: pointer = nil): bool
proc InputTextWithHint*(label: cstring; hint: cstring; buf: cstring; buf_size: csize_t; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None; callback: ImGuiInputTextCallback = nil; user_data: pointer = nil): bool
proc InputFloat*(label: cstring; v: ptr cfloat; step: cfloat = 0.0f; step_fast: cfloat = 0.0f; format: cstring = "%.3f"; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputFloat2*(label: cstring; v: array[2, cfloat]; format: cstring = "%.3f"; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputFloat3*(label: cstring; v: array[3, cfloat]; format: cstring = "%.3f"; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputFloat4*(label: cstring; v: array[4, cfloat]; format: cstring = "%.3f"; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputInt*(label: cstring; v: ptr cint; step: cint = 1; step_fast: cint = 100; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputInt2*(label: cstring; v: array[2, cint]; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputInt3*(label: cstring; v: array[3, cint]; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputInt4*(label: cstring; v: array[4, cint]; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputDouble*(label: cstring; v: ptr cdouble; step: cdouble = 0.0; step_fast: cdouble = 0.0; format: cstring = "%.6f"; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputScalar*(label: cstring; data_type: ImGuiDataType; p_data: pointer; p_step: pointer = nil; p_step_fast: pointer = nil; format: cstring = nil; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc InputScalarN*(label: cstring; data_type: ImGuiDataType; p_data: pointer; components: cint; p_step: pointer = nil; p_step_fast: pointer = nil; format: cstring = nil; flags: ImGuiInputTextFlags = ImGuiInputTextFlags_None): bool
proc ColorEdit3*(label: cstring; col: array[3, cfloat]; flags: ImGuiColorEditFlags = ImGuiColorEditFlags_None): bool
proc ColorEdit4*(label: cstring; col: array[4, cfloat]; flags: ImGuiColorEditFlags = ImGuiColorEditFlags_None): bool
proc ColorPicker3*(label: cstring; col: array[3, cfloat]; flags: ImGuiColorEditFlags = ImGuiColorEditFlags_None): bool
proc ColorPicker4*(label: cstring; col: array[4, cfloat]; flags: ImGuiColorEditFlags = ImGuiColorEditFlags_None; ref_col: ptr cfloat = nil): bool
proc ColorButton*(desc_id: cstring; col: ImVec4; flags: ImGuiColorEditFlags = ImGuiColorEditFlags_None; size: ImVec2 = ImVec2(x: 0, y: 0)): bool
proc SetColorEditOptions*(flags: ImGuiColorEditFlags)
proc TreeNode*(label: cstring): bool
proc TreeNodeEx*(label: cstring; flags: ImGuiTreeNodeFlags = ImGuiTreeNodeFlags_None): bool
proc TreePush*(str_id: cstring)
proc TreePush*(ptr_id: pointer = nil)
proc TreePop*()
proc GetTreeNodeToLabelSpacing*(): cfloat
proc CollapsingHeader*(label: cstring; flags: ImGuiTreeNodeFlags = ImGuiTreeNodeFlags_None): bool
proc CollapsingHeader*(label: cstring; p_visible: ptr bool; flags: ImGuiTreeNodeFlags = ImGuiTreeNodeFlags_None): bool
proc SetNextItemOpen*(is_open: bool; cond: ImGuiCond = ImGuiCond_None)
proc Selectable*(label: cstring; selected: bool = false; flags: ImGuiSelectableFlags = ImGuiSelectableFlags_None; size: ImVec2 = ImVec2(x: 0, y: 0)): bool
proc Selectable*(label: cstring; p_selected: ptr bool; flags: ImGuiSelectableFlags = ImGuiSelectableFlags_None; size: ImVec2 = ImVec2(x: 0, y: 0)): bool
proc BeginListBox*(label: cstring; size: ImVec2 = ImVec2(x: 0, y: 0)): bool
proc EndListBox*()
proc ListBox*(label: cstring; current_item: ptr cint; items: ptr cstring; items_count: cint; height_in_items: cint = -1): bool
proc ListBox*(label: cstring; current_item: ptr cint; items_getter: proc (data: pointer; idx: cint; out_text: cstringArray): bool; data: pointer; items_count: cint; height_in_items: cint = -1): bool
proc PlotLines*(label: cstring; values: ptr cfloat; values_count: cint; values_offset: cint = 0; overlay_text: cstring = nil; scale_min: cfloat = FLT_MAX; scale_max: cfloat = FLT_MAX; graph_size: ImVec2 = ImVec2(x: 0, y: 0); stride: cint = cfloat.sizeof.cint)
proc PlotLines*(label: cstring; values_getter: proc (data: pointer; idx: cint): cfloat; data: pointer; values_count: cint; values_offset: cint = 0; overlay_text: cstring = nil; scale_min: cfloat = FLT_MAX; scale_max: cfloat = FLT_MAX; graph_size: ImVec2 = ImVec2(x: 0, y: 0))
proc PlotHistogram*(label: cstring; values: ptr cfloat; values_count: cint; values_offset: cint = 0; overlay_text: cstring = nil; scale_min: cfloat = FLT_MAX; scale_max: cfloat = FLT_MAX; graph_size: ImVec2 = ImVec2(x: 0, y: 0); stride: cint = cfloat.sizeof.cint)
proc PlotHistogram*(label: cstring; values_getter: proc (data: pointer; idx: cint): cfloat; data: pointer; values_count: cint; values_offset: cint = 0; overlay_text: cstring = nil; scale_min: cfloat = FLT_MAX; scale_max: cfloat = FLT_MAX; graph_size: ImVec2 = ImVec2(x: 0, y: 0))
proc Value*(prefix: cstring; b: bool)
proc Value*(prefix: cstring; v: cint)
proc Value*(prefix: cstring; v: cuint)
proc Value*(prefix: cstring; v: cfloat; float_format: cstring = nil)
proc BeginMenuBar*(): bool
proc EndMenuBar*()
proc BeginMainMenuBar*(): bool
proc EndMainMenuBar*()
proc BeginMenu*(label: cstring; enabled: bool = true): bool
proc EndMenu*()
proc MenuItem*(label: cstring; shortcut: cstring = nil; selected: bool = false; enabled: bool = true): bool
proc MenuItem*(label: cstring; shortcut: cstring; p_selected: ptr bool; enabled: bool = true): bool
proc BeginTooltip*()
proc EndTooltip*()
proc BeginPopup*(str_id: cstring; flags: ImGuiWindowFlags = ImGuiWindowFlags_None): bool
proc BeginPopupModal*(name: cstring; p_open: ptr bool = nil; flags: ImGuiWindowFlags = ImGuiWindowFlags_None): bool
proc EndPopup*()
proc OpenPopup*(str_id: cstring; popup_flags: ImGuiPopupFlags = ImGuiPopupFlags_None)
proc OpenPopup*(id: ImGuiID; popup_flags: ImGuiPopupFlags = ImGuiPopupFlags_None)
proc OpenPopupOnItemClick*(str_id: cstring = nil; popup_flags: ImGuiPopupFlags = ImGuiPopupFlags_MouseButtonRight)
proc CloseCurrentPopup*()
proc BeginPopupContextItem*(str_id: cstring = nil; popup_flags: ImGuiPopupFlags = ImGuiPopupFlags_MouseButtonRight): bool
proc BeginPopupContextWindow*(str_id: cstring = nil; popup_flags: ImGuiPopupFlags = ImGuiPopupFlags_MouseButtonRight): bool
proc BeginPopupContextVoid*(str_id: cstring = nil; popup_flags: ImGuiPopupFlags = ImGuiPopupFlags_MouseButtonRight): bool
proc IsPopupOpen*(str_id: cstring; flags: ImGuiPopupFlags = ImGuiPopupFlags_None): bool
proc BeginTable*(str_id: cstring; column: cint; flags: ImGuiTableFlags = ImGuiTableFlags_None; outer_size: ImVec2 = ImVec2(x: 0, y: 0); inner_width: cfloat = 0.0f): bool
proc EndTable*()
proc TableNextRow*(row_flags: ImGuiTableRowFlags = ImGuiTableRowFlags_None; min_row_height: cfloat = 0.0f)
proc TableNextColumn*(): bool
proc TableSetColumnIndex*(column_n: cint): bool
proc TableSetupColumn*(label: cstring; flags: ImGuiTableColumnFlags = ImGuiTableColumnFlags_None; init_width_or_weight: cfloat = 0.0f; user_id: ImGuiID = 0)
proc TableSetupScrollFreeze*(cols: cint; rows: cint)
proc TableHeadersRow*()
proc TableHeader*(label: cstring)
proc TableGetSortSpecs*(): ptr ImGuiTableSortSpecs
proc TableGetColumnCount*(): cint
proc TableGetColumnIndex*(): cint
proc TableGetRowIndex*(): cint
proc TableGetColumnName*(column_n: cint = -1): cstring
proc TableGetColumnFlags*(column_n: cint = -1): ImGuiTableColumnFlags
proc TableSetColumnEnabled*(column_n: cint; v: bool)
proc TableSetBgColor*(target: ImGuiTableBgTarget; color: ImU32; column_n: cint = -1)
proc Columns*(count: cint = 1; id: cstring = nil; border: bool = true)
proc NextColumn*()
proc GetColumnIndex*(): cint
proc GetColumnWidth*(column_index: cint = -1): cfloat
proc SetColumnWidth*(column_index: cint; width: cfloat)
proc GetColumnOffset*(column_index: cint = -1): cfloat
proc SetColumnOffset*(column_index: cint; offset_x: cfloat)
proc GetColumnsCount*(): cint
proc BeginTabBar*(str_id: cstring; flags: ImGuiTabBarFlags = ImGuiTabBarFlags_None): bool
proc EndTabBar*()
proc BeginTabItem*(label: cstring; p_open: ptr bool = nil; flags: ImGuiTabItemFlags = ImGuiTabItemFlags_None): bool
proc EndTabItem*()
proc TabItemButton*(label: cstring; flags: ImGuiTabItemFlags = ImGuiTabItemFlags_None): bool
proc SetTabItemClosed*(tab_or_docked_window_label: cstring)
proc LogToTTY*(auto_open_depth: cint = -1)
proc LogToFile*(auto_open_depth: cint = -1; filename: cstring = nil)
proc LogToClipboard*(auto_open_depth: cint = -1)
proc LogFinish*()
proc LogButtons*()
proc BeginDragDropSource*(flags: ImGuiDragDropFlags = ImGuiDragDropFlags_None): bool
proc SetDragDropPayload*(`type`: cstring; data: pointer; sz: csize_t; cond: ImGuiCond = ImGuiCond_None): bool
proc EndDragDropSource*()
proc BeginDragDropTarget*(): bool
proc AcceptDragDropPayload*(`type`: cstring; flags: ImGuiDragDropFlags = ImGuiDragDropFlags_None): ptr ImGuiPayload
proc EndDragDropTarget*()
proc GetDragDropPayload*(): ptr ImGuiPayload
proc PushClipRect*(clip_rect_min: ImVec2; clip_rect_max: ImVec2; intersect_with_current_clip_rect: bool)
proc PopClipRect*()
proc SetItemDefaultFocus*()
proc SetKeyboardFocusHere*(offset: cint = 0)
proc IsItemHovered*(flags: ImGuiHoveredFlags = ImGuiHoveredFlags_None): bool
proc IsItemActive*(): bool
proc IsItemFocused*(): bool
proc IsItemClicked*(mouse_button: ImGuiMouseButton = ImGuiMouseButton_Left): bool
proc IsItemVisible*(): bool
proc IsItemEdited*(): bool
proc IsItemActivated*(): bool
proc IsItemDeactivated*(): bool
proc IsItemDeactivatedAfterEdit*(): bool
proc IsItemToggledOpen*(): bool
proc IsAnyItemHovered*(): bool
proc IsAnyItemActive*(): bool
proc IsAnyItemFocused*(): bool
proc GetItemRectMin*(): ImVec2
proc GetItemRectMax*(): ImVec2
proc GetItemRectSize*(): ImVec2
proc SetItemAllowOverlap*()
proc GetMainViewport*(): ptr ImGuiViewport
proc IsRectVisible*(size: ImVec2): bool
proc IsRectVisible*(rect_min: ImVec2; rect_max: ImVec2): bool
proc GetTime*(): cdouble
proc GetFrameCount*(): cint
proc GetBackgroundDrawList*(): ptr ImDrawList
proc GetForegroundDrawList*(): ptr ImDrawList
proc GetDrawListSharedData*(): ptr ImDrawListSharedData
proc GetStyleColorName*(idx: ImGuiCol): cstring
proc SetStateStorage*(storage: ptr ImGuiStorage)
proc GetStateStorage*(): ptr ImGuiStorage
proc CalcListClipping*(items_count: cint; items_height: cfloat; out_items_display_start: ptr cint; out_items_display_end: ptr cint)
proc BeginChildFrame*(id: ImGuiID; size: ImVec2; flags: ImGuiWindowFlags = ImGuiWindowFlags_None): bool
proc EndChildFrame*()
proc CalcTextSize*(text: cstring; text_end: cstring = nil; hide_text_after_double_hash: bool = false; wrap_width: cfloat = -1.0f): ImVec2
proc ColorConvertU32ToFloat4*(`in`: ImU32): ImVec4
proc ColorConvertFloat4ToU32*(`in`: ImVec4): ImU32
proc ColorConvertRGBtoHSV*(r: cfloat; g: cfloat; b: cfloat; out_h: var cfloat; out_s: var cfloat; out_v: var cfloat)
proc ColorConvertHSVtoRGB*(h: cfloat; s: cfloat; v: cfloat; out_r: var cfloat; out_g: var cfloat; out_b: var cfloat)
proc GetKeyIndex*(imgui_key: ImGuiKey): cint
proc IsKeyDown*(user_key_index: cint): bool
proc IsKeyPressed*(user_key_index: cint; repeat: bool = true): bool
proc IsKeyReleased*(user_key_index: cint): bool
proc GetKeyPressedAmount*(key_index: cint; repeat_delay: cfloat; rate: cfloat): cint
proc CaptureKeyboardFromApp*(want_capture_keyboard_value: bool = true)
proc IsMouseDown*(button: ImGuiMouseButton): bool
proc IsMouseClicked*(button: ImGuiMouseButton; repeat: bool = false): bool
proc IsMouseReleased*(button: ImGuiMouseButton): bool
proc IsMouseDoubleClicked*(button: ImGuiMouseButton): bool
proc IsMouseHoveringRect*(r_min: ImVec2; r_max: ImVec2; clip: bool = true): bool
proc IsMousePosValid*(mouse_pos: ptr ImVec2 = nil): bool
proc IsAnyMouseDown*(): bool
proc GetMousePos*(): ImVec2
proc GetMousePosOnOpeningCurrentPopup*(): ImVec2
proc IsMouseDragging*(button: ImGuiMouseButton; lock_threshold: cfloat = -1.0f): bool
proc GetMouseDragDelta*(button: ImGuiMouseButton = ImGuiMouseButton_Left; lock_threshold: cfloat = -1.0f): ImVec2
proc ResetMouseDragDelta*(button: ImGuiMouseButton = ImGuiMouseButton_Left)
proc GetMouseCursor*(): ImGuiMouseCursor
proc SetMouseCursor*(cursor_type: ImGuiMouseCursor)
proc CaptureMouseFromApp*(want_capture_mouse_value: bool = true)
proc GetClipboardText*(): cstring
proc SetClipboardText*(text: cstring)
proc LoadIniSettingsFromDisk*(ini_filename: cstring)
proc LoadIniSettingsFromMemory*(ini_data: cstring; ini_size: csize_t = 0)
proc SaveIniSettingsToDisk*(ini_filename: cstring)
proc SaveIniSettingsToMemory*(out_ini_size: ptr csize_t = nil): cstring
proc DebugCheckVersionAndDataLayout*(version_str: cstring; sz_io: csize_t; sz_style: csize_t; sz_vec2: csize_t; sz_vec4: csize_t; sz_drawvert: csize_t; sz_drawidx: csize_t): bool
proc SetAllocatorFunctions*(alloc_func: ImGuiMemAllocFunc; free_func: ImGuiMemFreeFunc; user_data: pointer = nil)
proc GetAllocatorFunctions*(p_alloc_func: ptr ImGuiMemAllocFunc; p_free_func: ptr ImGuiMemFreeFunc; p_user_data: ptr pointer)
proc MemAlloc*(size: csize_t): pointer
proc MemFree*(`ptr`: pointer)

{.pop.}