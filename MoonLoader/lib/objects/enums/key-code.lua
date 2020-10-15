---@class Enum.KeyCode
---Keys named in all caps are unknown but still are registered.
---@public
local KeyCode = {
   LBUTTON = 0x01,
   RBUTTON = 0x02,
   CANCEL = 0x03,
   MBUTTON = 0x04,
   XBUTTON1 = 0x05,
   XBUTTON2 = 0x06,
   BACK = 0x08,
   Tab = 0x09,
   CLEAR = 0x0C,
   Return = 0x0D,
   Shift = 0x10,
   Control = 0x11,
   Menu = 0x12,
   Pause = 0x13,
   CapsLock = 0x14,
   KANA = 0x15,
   JUNJA = 0x17,
   FINAL = 0x18,
   KANJI = 0x19,
   Escape = 0x1B,
   Convert = 0x1C,
   NonConvert = 0x1D,
   Accept = 0x1E,
   ModeChange = 0x1F,
   Space = 0x20,
   PRIOR = 0x21,
   NEXT = 0x22,
   End = 0x23,
   HOME = 0x24,
   Left = 0x25,
   Up = 0x26,
   Right = 0x27,
   Down = 0x28,
   Select = 0x29,
   Print = 0x2A,
   Execute = 0x2B,
   Snapshot = 0x2C,
   Insert = 0x2D,
   Delete = 0x2E,
   Help = 0x2F,
   Zero = 0x30,
   One = 0x31,
   Two = 0x32,
   Three = 0x33,
   Four = 0x34,
   Five = 0x35,
   Six = 0x36,
   Seven = 0x37,
   Eight = 0x38,
   Nine = 0x39,
   A = 0x41,
   B = 0x42,
   C = 0x43,
   D = 0x44,
   E = 0x45,
   F = 0x46,
   G = 0x47,
   H = 0x48,
   I = 0x49,
   J = 0x4A,
   K = 0x4B,
   L = 0x4C,
   M = 0x4D,
   N = 0x4E,
   O = 0x4F,
   P = 0x50,
   Q = 0x51,
   R = 0x52,
   S = 0x53,
   T = 0x54,
   U = 0x55,
   V = 0x56,
   W = 0x57,
   X = 0x58,
   Y = 0x59,
   Z = 0x5A,
   --
   LeftCommand = 0x5B,
   RightCommand = 0x5C,
   --
   APPS = 0x5D,
   SLEEP = 0x5F,
   --Keypad
   KeypadZero = 0x60,
   KeypadOne = 0x61,
   KeypadTwo = 0x62,
   KeypadThree = 0x63,
   KeypadFour = 0x64,
   KeypadFive = 0x65,
   KeypadSix = 0x66,
   KeypadSeven = 0x67,
   KeypadEight = 0x68,
   KeypadNine = 0x69,
   KeypadMultiply = 0x6A,
   KeypadPlus = 0x6B,
   KeypadSeparator = 0x6C, -- todo: Find actual name
   KeypadMinus = 0x6D,
   KeypadPeriod = 0x6E,
   KeypadDivide = 0x6F,
   --Function Keys
   F1 = 0x70,
   F2 = 0x71,
   F3 = 0x72,
   F4 = 0x73,
   F5 = 0x74,
   F6 = 0x75,
   F7 = 0x76,
   F8 = 0x77,
   F9 = 0x78,
   F10 = 0x79,
   F11 = 0x7A,
   F12 = 0x7B,
   F13 = 0x7C,
   F14 = 0x7D,
   F15 = 0x7E,
   F16 = 0x7F,
   F17 = 0x80,
   F18 = 0x81,
   F19 = 0x82,
   F20 = 0x83,
   F21 = 0x84,
   F22 = 0x85,
   F23 = 0x86,
   F24 = 0x87,
   --
   NumLock = 0x90,
   ScrollLock = 0x91,
   --
   OEM_FJ_JISHO = 0x92,
   OEM_FJ_MASSHOU = 0x93,
   OEM_FJ_TOUROKU = 0x94,
   OEM_FJ_LOYA = 0x95,
   OEM_FJ_ROYA = 0x96,
   --
   LeftShift = 0xA0,
   RightShift = 0xA1,
   --
   LeftControl = 0xA2,
   RightControl = 0xA3,
   --
   LeftMenu = 0xA4,
   RightMenu = 0xA5,
   --
   BROWSER_BACK = 0xA6,
   BROWSER_FORWARD = 0xA7,
   BROWSER_REFRESH = 0xA8,
   BROWSER_STOP = 0xA9,
   BROWSER_SEARCH = 0xAA,
   BROWSER_FAVORITES = 0xAB,
   BROWSER_HOME = 0xAC,
   --
   VolumeMute = 0xAD,
   VolumeDown = 0xAE,
   VolumeUp = 0xAF,
   --
   MEDIA_NEXT_TRACK = 0xB0,
   MEDIA_PREV_TRACK = 0xB1,
   MEDIA_STOP = 0xB2,
   MEDIA_PLAY_PAUSE = 0xB3,
   --
   LAUNCH_MAIL = 0xB4,
   LAUNCH_MEDIA_SELECT = 0xB5,
   LAUNCH_APP1 = 0xB6,
   LAUNCH_APP2 = 0xB7,
   --
   OEM_1 = 0xBA,
   OEM_2 = 0xBF,
   OEM_3 = 0xC0,
   OEM_4 = 0xDB,
   OEM_5 = 0xDC,
   OEM_6 = 0xDD,
   OEM_7 = 0xDE,
   OEM_8 = 0xDF,
   --
   OEM_PLUS = 0xBB,
   OEM_COMMA = 0xBC,
   OEM_MINUS = 0xBD,
   OEM_PERIOD = 0xBE,
   --
   ABNT_C1 = 0xC1,
   ABNT_C2 = 0xC2,
   --
   OEM_AX = 0xE1,
   OEM_102 = 0xE2,
   --
   ICO_HELP = 0xE3,
   ICO_CLEAR = 0xE6,
   --
   PROCESSKEY = 0xE5,
   PACKET = 0xE7,
   --
   OEM_RESET = 0xE9,
   OEM_JUMP = 0xEA,
   OEM_PA1 = 0xEB,
   OEM_PA2 = 0xEC,
   OEM_PA3 = 0xED,
   OEM_WSCTRL = 0xEE,
   OEM_CUSEL = 0xEF,
   OEM_ATTN = 0xF0,
   OEM_FINISH = 0xF1,
   OEM_COPY = 0xF2,
   OEM_AUTO = 0xF3,
   OEM_ENLW = 0xF4,
   OEM_BACKTAB = 0xF5,
   --
   ATTN = 0xF6,
   CRSEL = 0xF7,
   EXSEL = 0xF8,
   EREOF = 0xF9,
   PLAY = 0xFA,
   ZOOM = 0xFB,
   PA1 = 0xFD,
   OEM_CLEAR = 0xFE,
}

return KeyCode