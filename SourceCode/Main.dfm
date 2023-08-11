object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Modbus TCP Download (ver 0.0.1)'
  ClientHeight = 480
  ClientWidth = 596
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ___pnBase: TPanel
    Left = 0
    Top = 124
    Width = 596
    Height = 356
    Align = alClient
    BevelOuter = bvNone
    Color = 5000268
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1083
    ExplicitHeight = 712
    object Label1: TLabel
      Left = 8
      Top = 445
      Width = 26
      Height = 13
      Caption = 'SEND'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 440
      Top = 445
      Width = 26
      Height = 13
      Caption = 'RECV'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 6
      Width = 20
      Height = 13
      Caption = 'LOG'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 47
      Top = 381
      Width = 35
      Height = 13
      Caption = 'Des_ID'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 94
      Top = 381
      Width = 35
      Height = 13
      Caption = 'F-Code'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 162
      Top = 381
      Width = 43
      Height = 13
      Caption = 'StartAdd'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 237
      Top = 381
      Width = 74
      Height = 13
      Caption = 'Num of Position'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 332
      Top = 381
      Width = 21
      Height = 13
      Caption = 'High'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label9: TLabel
      Left = 380
      Top = 381
      Width = 19
      Height = 13
      Caption = 'Low'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label10: TLabel
      Left = 354
      Top = 362
      Width = 21
      Height = 13
      Caption = 'CRC'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object memo: TAdvMemo
      Left = 8
      Top = 32
      Width = 577
      Height = 313
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'Tahoma'
      AutoCompletion.Font.Style = []
      AutoCompletion.StartToken = '(.'
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BkColor = 5000268
      BookmarkGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
        2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
        2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
        B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
        B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
        BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
        25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      BorderStyle = bsSingle
      ClipboardFormats = [cfText]
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWhite
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Gutter.BorderColor = 7303023
      Gutter.GutterColor = 5000268
      Gutter.GutterColorTo = 5000268
      Gutter.LineNumberTextColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      OleDropTarget = []
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      ReadOnly = True
      RightMargin = 50
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = False
      SmartTabs = False
      TabOrder = 8
      TabStop = True
      TrimTrailingSpaces = False
      UILanguage.ScrollHint = 'Row'
      UILanguage.Undo = 'Undo'
      UILanguage.Redo = 'Redo'
      UILanguage.Copy = 'Copy'
      UILanguage.Cut = 'Cut'
      UILanguage.Paste = 'Paste'
      UILanguage.Delete = 'Delete'
      UILanguage.SelectAll = 'Select All'
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '3.4.1.0'
      WordWrap = wwNone
    end
    object memo_Send: TAdvMemo
      Left = 0
      Top = 464
      Width = 329
      Height = 249
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'Tahoma'
      AutoCompletion.Font.Style = []
      AutoCompletion.StartToken = '(.'
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BkColor = 5000268
      BookmarkGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
        2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
        2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
        B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
        B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
        BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
        25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      BorderStyle = bsSingle
      ClipboardFormats = [cfText]
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWhite
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Gutter.BorderColor = 7303023
      Gutter.GutterColor = 5000268
      Gutter.GutterColorTo = 5000268
      Gutter.LineNumberTextColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      OleDropTarget = []
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      ReadOnly = True
      RightMargin = 50
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = False
      SmartTabs = False
      TabOrder = 9
      TabStop = True
      TrimTrailingSpaces = False
      UILanguage.ScrollHint = 'Row'
      UILanguage.Undo = 'Undo'
      UILanguage.Redo = 'Redo'
      UILanguage.Copy = 'Copy'
      UILanguage.Cut = 'Cut'
      UILanguage.Paste = 'Paste'
      UILanguage.Delete = 'Delete'
      UILanguage.SelectAll = 'Select All'
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '3.4.1.0'
      WordWrap = wwNone
    end
    object memo_Recv: TAdvMemo
      Left = 335
      Top = 464
      Width = 432
      Height = 249
      Cursor = crIBeam
      ActiveLineSettings.ShowActiveLine = False
      ActiveLineSettings.ShowActiveLineIndicator = False
      AutoCompletion.Font.Charset = DEFAULT_CHARSET
      AutoCompletion.Font.Color = clWindowText
      AutoCompletion.Font.Height = -11
      AutoCompletion.Font.Name = 'Tahoma'
      AutoCompletion.Font.Style = []
      AutoCompletion.StartToken = '(.'
      AutoCorrect.Active = True
      AutoHintParameterPosition = hpBelowCode
      BkColor = 5000268
      BookmarkGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
        2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
        2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
        B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
        B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
        BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
        BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
        25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      BorderStyle = bsSingle
      ClipboardFormats = [cfText]
      CodeFolding.Enabled = False
      CodeFolding.LineColor = clGray
      Ctl3D = False
      DelErase = True
      EnhancedHomeKey = False
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWhite
      Gutter.Font.Height = -13
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Gutter.BorderColor = 7303023
      Gutter.GutterColor = 5000268
      Gutter.GutterColorTo = 5000268
      Gutter.LineNumberTextColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'COURIER NEW'
      Font.Style = []
      HiddenCaret = False
      Lines.Strings = (
        '')
      MarkerList.UseDefaultMarkerImageIndex = False
      MarkerList.DefaultMarkerImageIndex = -1
      MarkerList.ImageTransparentColor = 33554432
      OleDropTarget = []
      PrintOptions.MarginLeft = 0
      PrintOptions.MarginRight = 0
      PrintOptions.MarginTop = 0
      PrintOptions.MarginBottom = 0
      PrintOptions.PageNr = False
      PrintOptions.PrintLineNumbers = False
      ReadOnly = True
      RightMargin = 50
      RightMarginColor = 14869218
      ScrollHint = False
      SelColor = clWhite
      SelBkColor = clNavy
      ShowRightMargin = False
      SmartTabs = False
      TabOrder = 10
      TabStop = True
      TrimTrailingSpaces = False
      UILanguage.ScrollHint = 'Row'
      UILanguage.Undo = 'Undo'
      UILanguage.Redo = 'Redo'
      UILanguage.Copy = 'Copy'
      UILanguage.Cut = 'Cut'
      UILanguage.Paste = 'Paste'
      UILanguage.Delete = 'Delete'
      UILanguage.SelectAll = 'Select All'
      UrlStyle.TextColor = clBlue
      UrlStyle.BkColor = clWhite
      UrlStyle.Style = [fsUnderline]
      UseStyler = True
      Version = '3.4.1.0'
      WordWrap = wwNone
    end
    object ed_SendBuf_0: TAdvEdit
      Left = 44
      Top = 400
      Width = 41
      Height = 26
      EditAlign = eaCenter
      EditType = etHex
      EmptyTextStyle = []
      MaxValue = 255
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
      Text = '01'
      Visible = False
      Version = '3.3.5.3'
    end
    object ed_SendBuf_1: TAdvEdit
      Left = 91
      Top = 400
      Width = 41
      Height = 26
      EditAlign = eaCenter
      EditType = etHex
      EmptyTextStyle = []
      MaxValue = 255
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      Text = '0'
      Visible = False
      Version = '3.3.5.3'
    end
    object ed_SendBuf_2: TAdvEdit
      Left = 137
      Top = 400
      Width = 41
      Height = 26
      EditAlign = eaCenter
      EditType = etHex
      EmptyTextStyle = []
      MaxValue = 255
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 2
      Text = '0'
      Visible = False
      Version = '3.3.5.3'
    end
    object ed_SendBuf_3: TAdvEdit
      Left = 183
      Top = 400
      Width = 41
      Height = 26
      EditAlign = eaCenter
      EditType = etHex
      EmptyTextStyle = []
      MaxValue = 255
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 3
      Text = '0'
      Visible = False
      Version = '3.3.5.3'
    end
    object ed_SendBuf_5: TAdvEdit
      Left = 277
      Top = 400
      Width = 41
      Height = 26
      EditAlign = eaCenter
      EditType = etHex
      EmptyTextStyle = []
      MaxValue = 255
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 5
      Text = '0'
      Visible = False
      Version = '3.3.5.3'
    end
    object ed_SendBuf_4: TAdvEdit
      Left = 230
      Top = 400
      Width = 41
      Height = 26
      EditAlign = eaCenter
      EditType = etHex
      EmptyTextStyle = []
      MaxValue = 255
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 4
      Text = '0'
      Visible = False
      Version = '3.3.5.3'
    end
    object ed_SendBuf_6: TAdvEdit
      Left = 324
      Top = 400
      Width = 41
      Height = 26
      EditAlign = eaCenter
      EditType = etHex
      EmptyTextStyle = []
      MaxValue = 255
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 6
      Text = '0'
      Visible = False
      Version = '3.3.5.3'
    end
    object ed_SendBuf_7: TAdvEdit
      Left = 371
      Top = 400
      Width = 41
      Height = 26
      EditAlign = eaCenter
      EditType = etHex
      EmptyTextStyle = []
      MaxValue = 255
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 7
      Text = '0'
      Visible = False
      Version = '3.3.5.3'
    end
  end
  object RibbonMenu: TdxRibbon
    Left = 0
    Top = 0
    Width = 596
    Height = 124
    BarManager = BarMgr
    ColorSchemeName = 'DevExpressDarkStyle'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    ExplicitWidth = 1083
    object RibbonMenuTab1: TdxRibbonTab
      Active = True
      Caption = 'Menu'
      Groups = <
        item
          ToolbarName = 'BarMgrBar1'
        end
        item
          ToolbarName = 'BarMgrBar2'
        end
        item
          ToolbarName = 'BarMgrBar3'
        end>
      Index = 0
    end
  end
  object BarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 408
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMgrBar1: TdxBar
      Caption = 'Connection'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1107
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuBtn_Connect'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_Disconnect'
        end>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarMgrBar2: TdxBar
      Caption = 'Communication'
      CaptionButtons = <>
      DockedLeft = 170
      DockedTop = 0
      FloatLeft = 1107
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuBtn_Send'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_FaultDownload'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_OpdataDownload'
        end>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarMgrBar3: TdxBar
      Caption = 'Info'
      CaptionButtons = <>
      DockedLeft = 420
      DockedTop = 0
      FloatLeft = 620
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuBtn_Version'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MenuBtn_Connect: TdxBarLargeButton
      Caption = 'Connect'
      Category = 0
      Hint = 'Connect'
      Visible = ivAlways
      OnClick = MenuBtn_ConnectClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000004000000070000000B0000000F0000001100000012000000120000
        00110000000F0000000B00000007000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000050000
        000B0000001600000024000000300000003C000000440000004A0000004A0000
        00450000003E0000003200000025000000170000000C00000005000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000030000000A000000170000
        002C080300502C0F0195491A01C65D2002E2722502F37E2802FC7D2602FC6E22
        02F2571B02E03F1401C3230B0195060200540000002F000000190000000B0000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000000000000000000010000000500000010000000260D0400554415
        01AA752401E4903006FF424203FF3D4604FF75380AFF803B0BFFA2300FFFAF31
        0FFFAB2F0FFF9D2E0CFF8A2A08FF571B03E6300F01AE09030059000000290000
        0011000000050000000100000000000000000000000000000000000000000000
        0000000000000000000100000005000000130000002F300F0187752401D9AD32
        07FFAD2F0BFF763508FF0A4C00FF0A5D00FF0B7C00FF0C8300FF276102FF872D
        09FFA32B0BFFB32E0FFFBC3112FFA82F0FFF8E2B09FF4E1802DC1E0A018D0000
        0034000000150000000600000001000000000000000000000000000000000000
        0000000000010000000400000012000000314515019C9B2D03F0B73009FFBC28
        0BFFAF2408FF573503FF0A4E00FF0B6700FF0B7D00FF0B8000FF0B7C00FF106E
        00FF215E01FF7F3006FFB3270BFFBC2C0FFFBC3112FF9E2E0EFF6D2106F32A0D
        01A3000000370000001500000005000000010000000000000000000000000000
        0001000000030000000E0000002C4816019BAD3205F6C13008FFC52709FFBE24
        05FF9B2302FF2D3E02FF0A5700FF0B7200FF0B7E00FF0B7D00FF0A7800FF0A73
        00FF0A6F00FF374801FF9F2204FFB62409FFBA280CFFBD2F11FFA62F0FFF7625
        06F8290D01A30000003300000011000000040000000100000000000000000000
        0002000000090000002237110182AA3303EFCA3108FFCF2907FFC92303FFA029
        03FF234A06FF0B5703FF0C6801FF0D7C01FF0B7E00FF0B7A00FF0A7500FF0A70
        00FF096A00FF115C00FF593301FFA61E03FFB62007FFBA270CFFBC2E10FFA62F
        0FFF6B2205F21E0A018C000000280000000B0000000200000000000000000000
        0004000000141005004B8A2A02D4D13708FFDA2E08FFD72C05FFB92A03FF2A4F
        0CFF0D600BFF0E6A06FF0E7A03FF0E8103FF0D7E02FF0D7902FF0B7301FF0A6D
        01FF096700FF096100FF0A5C00FF902001FFB41B03FFB72007FFBA270CFFBD2F
        11FF9E2E0DFF4D1802DC09030057000000180000000500000000000000010000
        000900000024581B019FD43D06FFE03509FFE43206FFD93207FF723F09FF0E63
        10FF10710DFF117C08FF118506FF108205FF107F05FF0F7804FF106D03FF2C52
        02FF484001FF643301FF882200FFA91A00FFB31801FFB51A03FFB72007FFBA28
        0DFFBC3112FF8E2B0AFF300F01AB0000002D0000000C00000001000000030000
        00100C040041A03103DCE03F0AFFE63F0DFFE7420EFFD6410EFF4B4E0EFF126B
        0EFF127D0BFF148909FF148708FF138408FF137F08FF117907FF3E5606FFB02B
        05FFC12503FFC02102FFBD1C01FFB91900FFB31700FFB41701FFB51B04FFB823
        09FFBC2C0FFFA82F0FFF571B03E4060200500000001600000004000000050000
        001A42150181DC4608FFEA4B15FFE94F16FFEA5317FFE35719FF9D5216FF166E
        0DFF17860DFF178D0CFF178A0CFF16850BFF1A7A0BFF43600BFFA5400AFFDA31
        07FFDB2B06FFD52404FFCC2003FFC21C01FFBA1700FFB31701FFB31902FFB21E
        05FFB3270CFFBB3112FF8A2A08FF230B01910000002300000007000000070000
        0021752502B1E24D10FFEB591CFFED6220FFE96623FFE56927FFC36724FF1D76
        10FF1A890FFF1B8F10FF228310FF357712FF9E5819FFD05018FFE04714FFE53F
        0FFFE53308FFDE2B06FFD52505FFCC2003FFC21C01FFB91700FFAD1801FF9027
        03FF764007FFA82E0EFF9A2E0CFF401301BF0000002E0000000A000000090000
        0027A03403D2E95F1AFFEE6E28FFEA732BFFD5702EFF958026FFCF7A34FF6876
        21FF4B7D1BFF877726FFC4732EFFD2722DFFE56E2BFFEC6525FFEB5B1DFFE84D
        17FFE74211FFE53409FFDE2D06FFD42505FFCB2003FFBB1B01FF9B1D01FF3B76
        10FF338311FF5B500BFF91300DFF531D02DF0001003A0000000E0000000A0000
        002AC33F06EBEE7228FFEB7E33FFCC7734FF648123FF668B29FFDC9246FFE599
        46FFDF9747FFE79846FFF09645FFF28D3FFFF1843AFFEF7A32FFED6B29FFEB5E
        21FFEA4E18FFE74211FFE53409FFDD2906FFD32304FFBC1F02FF723F0AFF3A8B
        21FF3A8B21FF398A1FFF407D1CFF503F08F6000200460000000F0000000A0000
        002BD84707F9ED8637FFD9873CFF608524FF2CA71EFF95893FFFEAAB58FFF7B6
        5EFFF8B65EFFF6B25BFFF6AC56FFF5A350FFF49848FFF18C3EFFEF7D34FFED6C
        2AFFEB5E21FFE94D18FFE64010FFE43108FFDA2706FFBD2403FF645317FF4596
        3AFF45963AFF459639FF449537FF53430EFD0003004D00000010000000090000
        0029D94809F9E79040FF978834FF588E29FF9B8D45FFACA752FFEABA69FFF1C1
        6EFFF7C66EFFF9C36CFFF9BF67FFF8B760FFF6AA56FFF49D4BFFF28E41FFEF7D
        35FFED6C29FFEB5B20FFE84A16FFE6390DFFE02E07FFBE2805FF606B2FFF52A3
        55FF52A457FF52A456FF51A354FF584614FD0003004A0000000F000000080000
        0023C44208E9D88D42FF578E28FF5E9033FFD5AF65FFE6C373FFBFB569FFB8BE
        6CFFF4D07FFFFCD47FFFFBCD79FFF9C56FFFF8BC66FFF6AD58FFF49D4DFFF18D
        40FFEF7B32FFED6726FFEB531BFFE74211FFE43309FFC62B06FF6A753DFF5FB0
        71FF5FB172FF5FB172FF5EB070FF5A3D11F5000200420000000E000000070000
        001DA33807CCD0863FFF439326FF3DA42EFFB49C61FFB5A769FF6BAE59FFA7A9
        6BFFEBD387FFFCE08DFFFCDA86FFFCD37DFFFAC872FFF8BB67FFF6AA57FFF49B
        49FFF1853BFFEE712EFFEB5D21FFE94A16FFE6380DFFCF2D07FF83572BFF6ABC
        89FF6ABD8CFF6ABD8CFF69BC89FF552C0AE2000100360000000C000000050000
        0016792A06A3C97634FF41982BFF40AE36FF4E9F44FF58B653FF63C263FF6FB8
        6CFFC0BF83FFF7E39AFFFEE696FFFDDE8AFFFBD37FFFF9C570FFF8B761FFF5A5
        51FFF29143FFF07C33FFED6726FFEA5219FFE64010FFDB3108FFA23710FF73C6
        9FFF74C7A1FF74C7A1FF6FB48CFF431B01C00000002800000009000000030000
        000F4518046CC76324FF4A9A34FF47B43FFF53BA4EFF5FC05EFF6CC76EFF77CC
        7CFF8FAC7BFFDFD39AFFF8E89FFFFDE494FFFCDC88FFFBD079FFF9C069FFF6AB
        58FFF39848FFF08239FFED6B29FFEB581DFFE84311FFDD3308FFAA3812FF7ABA
        99FF7CCFB2FF7CCFB3FF739774FF2A1201900000001C00000005000000010000
        00080C0401289B3709D4638835FF4BB645FF59BD55FF65C366FF72CA76FF7ED0
        85FF88CC91FF99B289FFC3C08EFFE6D490FFF8DD8CFFFCD580FFF9C46EFFF7B3
        5EFFF39E4EFFF1863CFFEE702DFFEB5C1FFFE54714FFD1370CFF80895AFF8051
        28FF6E8E5FFF706A3CFF60431AE8080400490000001100000003000000000000
        0004000000105C21058998692CFF4FB84BFF5EC05DFF6CC76EFF78CD7EFF86D4
        8FFF97DBA2FFA7E2B3FFB2E7C0FFAFC19DFFDDC883FFF4D281FFF8C771FFF8B7
        61FFF5A250FFF18A3EFFEF742EFFEB5E21FFE34916FFBB4B1CFF6CB57FFF9837
        11FFA62E0BFF9E3206FF4116019D000000220000000800000001000000000000
        0001000000081206012C853009C85C9441FF63C263FF70C975FF7ED086FF90D8
        9AFFA3E0AEFFB4E6C1FFC3EED0FFB3CCB8FFB3B998FFD5C283FFF4C471FFF8B7
        61FFF5A451FFF18C3FFFEF762FFFE95E20FFE14916FFBF380AFF72834EFF7275
        42FF7E6B37FF6F2501CF0D040040000000100000000300000000000000000000
        0001000000030000000C3D160463934D1DEB5FAF5AFF75CB7AFF85D38DFF9ADC
        A6FFB0E5BCFFA4BFA7FFD2F3DDFFDEF6E8FFE1F7ECFFCABF8FFFF0C16DFFF8B7
        60FFF5A24FFFF18B3DFFEB732DFFD85C21FFBB4D19FF875F2CFF61AA6BFF5DAF
        6DFF6D5F29F52F11007900000019000000070000000100000000000000000000
        000000000001000000040000000F511D067B9B5826F46FAE69FF8AD694FFA3E1
        AEFFAED4B6FFA4A484FFAFB196FFD1DDD0FFB1AE91FFCFB271FFE0B164FFDEA2
        55FFEB9949FFF1883BFFE6702BFF997D40FF6F8E51FF5EA965FF59AA63FF676A
        2DFA3E1A0194000100210000000A000000020000000100000000000000000000
        00000000000000000001000000050000000F521E06799B4D1EEA84A874FFAEE4
        B9FFC0E1C7FFA7AC92FFAAA483FFB8B6A5FFD0CEC1FFBBA272FFC0B193FFD3D8
        C9FFC27A3BFFE87D37FFE06A27FFB6591FFF698545FF57A259FF686125F63F1A
        0193000100210000000B00000003000000010000000000000000000000000000
        0000000000000000000000000001000000040000000C3D16045D802E09C79994
        6EFFD1ECD6FFECFBF1FFF6FCF9FFFCFEFDFFFEFFFEFFB4A895FFD5D8D0FFEDFB
        F7FFC8C6B1FFD5722FFFC06D2CFF629B52FF618C42FF6A3F0ED8331501760001
        001D0000000A0000000300000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000030000000811060127561F
        058B854A28E0C2B4A6FFEEF0ECFFFDFFFDFFBCB4A7FFBFB8AAFFF8FEFBFFD5D8
        CFFFB66E3EFFD35B19FF986A26FF764F16E1501E019210070038000000130000
        0007000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000050000
        000B0C0401273D1504725F2308AF96654FE3B38975F6C6A99AFDC1A394FD9D4D
        28EE953105C87426039C4016026C0B06002E0001001300000009000000040000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000004000000070000000D0000001A000000260000002D0000002A0000
        001A000000120000000D0000000A000000070000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000300000003000000040000
        0004000000030000000300000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 80
    end
    object MenuBtn_Disconnect: TdxBarLargeButton
      Caption = 'Disconnect'
      Category = 0
      Hint = 'Disconnect'
      Visible = ivNever
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000004000000070000000B0000000F0000001100000012000000120000
        00110000000F0000000B00000007000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000050000
        000C0000001600000024000000310000003D0000004400000049000000490000
        00450000003D0000003100000024000000170000000C00000005000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000030000000B000000180000
        002D0001075101032893020546C103065EDF040770F203087DFC03077BFC0206
        6EF202045AE0010342C201022694000007530000002E000000190000000B0000
        0003000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000005000000100000002700010B550205
        3AAB040866E40F1593FF10179BFF131BA2FF161EA7FF161FABFF161EAAFF131B
        A4FF10169DFF0C1293FF070C88FF02045DE5010234AD00000A58000000280000
        0011000000050000000100000000000000000000000000000000000000000000
        0000000000000000000100000006000000140000003102042789040960DA151C
        9BFF161FA7FF171FA8FF10169BFF0A0F90FF060A87FF030780FF020680FF0408
        85FF080C8BFF0C1294FF11179EFF0E149AFF070C8AFF020355DC0102228C0000
        0033000000150000000600000001000000000000000000000000000000000000
        0000000000010000000500000013000000340205369F0E1582F11D26A8FF1720
        ABFF0E1598FF282B93FF5D60A5FF8C8DB7FFB1B1C5FFCAC9CEFFC8C8CDFFAEAF
        C2FF8889B3FF595BA0FF24278CFF090E8EFF0F159DFF0B1293FF040770F20102
        2EA2000000360000001400000005000000010000000000000000000000000000
        0001000000040000000F0000002F0306379E141B8EF7222DB0FF141DA5FF2227
        97FF6E71AFFFBBBBCCFFD8D8D8FFD7D8D8FFD7D6D7FFD6D6D6FFD5D4D5FFD3D3
        D3FFD2D1D1FFD1D0D1FFB1B1C3FF6769A4FF1D208CFF0C1196FF0E1499FF0509
        79F801012EA20000003200000010000000040000000100000000000000000000
        00020000000A0000002503052A86121887F02932B4FF141DA4FF3C3F9EFF9B9D
        C3FFDCDBDCFFDBDCDCFFDBDCDBFFB5B6B6FF807F80FF525253FF343535FF4D4D
        4DFF767676FFABABABFFD1D2D1FFCFCFCFFF9091B5FF343791FF0C1093FF0E14
        99FF040770F20102228B000000270000000B0000000200000000000000000000
        00040000001601010C51060D68D72A34B2FF1922AAFF3C40A1FFACAECBFFDFDF
        DEFFDFDFDFFFDEDFDFFFA8A6A7FF585959FF3D3D3DFF383938FF353533FF3131
        31FF2E2E2EFF464645FF969696FFD1D1D1FFD0CFD0FF9F9EBAFF343791FF0C11
        96FF0C1193FF010355DA00000A55000000180000000500000000000000010000
        000A00000028050841A4232DABFF2933B8FF262C9FFF9FA2C8FFE1E2E1FFE2E2
        E2FFD6D6D6FF8A8C8CFF595958FF474746FF424141FF3D3D3DFF3A3939FF3635
        36FF313131FF2E2E2EFF474747FFACACACFFD2D2D1FFD0D0CFFF9091B5FF1D20
        8CFF0F159CFF080C8AFF010234AA0000002C0000000B00000001000000030000
        001301010949080F75DF3540BCFF141DA5FF7578B9FFE4E4E4FFE5E5E4FFDADA
        DAFF717271FF555555FF515151FF4B4B4BFF484747FF424242FF3D3D3DFF3A39
        3AFF363636FF323132FF2F302FFF787777FFD4D4D4FFD1D2D2FFCFCFCFFF6769
        A5FF090E8EFF0F159AFF01045DE30000074F0000001600000004000000060000
        001E03063088202AABFF333FC0FF2E34A2FFC6C7DAFFE7E7E7FFDEDEDDFF7D7D
        7BFF626161FF5C5C5DFF565656FF515151FF4D4B4DFF484848FF434343FF3E3E
        3EFF3A3A3CFF373637FF333332FF4F4F4FFFD6D7D7FFD3D4D4FFD1D2D1FFB1B2
        C3FF24278CFF11179FFF070C87FF010226900000002200000006000000090000
        0027060B55B7333DB9FF202BB2FF686CB7FFE9E9E9FFE1E1E1FF878788FF6E6D
        6EFF686869FF636363FF5C5D5DFF565856FF525253FF4E4D4DFF484948FF4444
        43FF3F3F3EFF3C3C3CFF373737FF363736FFD9D8D8FFD6D6D5FFD3D3D3FFD0D1
        D0FF595BA0FF0C1194FF0C1294FF010342BE0000002D0000000A0000000B0000
        002E081074D6434DC5FF151FA7FF9C9ECCFFE7E8E7FF939293FF7C7C7CFF7575
        75FF868684FF696969FF636362FF5F5F5FFF595959FF535353FF4E4E4EFF4949
        49FF444644FF413F3FFF3D3D3DFF383738FFDADADAFFD8D8D8FFD4D4D4FFD1D2
        D2FF8789B3FF090D8BFF10179CFF02045BDC000000370000000D0000000C0000
        00330B148EED4F5ACFFF0E179FFFC7C8DEFFD9DADAFF888A88FF838383FF9090
        90FFE6E7E7FF707070FF6B6B6BFF656563FF5F5F5FFF59595BFF555555FF4F4F
        4EFF4A494AFF464646FF414141FF3D3D3DFFDCDCDCFFD9D9DAFFD6D7D6FFD4D3
        D3FFAEAFC2FF040984FF131BA4FF02066FF00000003D0000000F0000000C0000
        00340D189EFA5764D5FF0A149BFFE5E5EAFFE2E2E2FFBEBEBEFFB2B2B2FFEAEA
        EAFFF4F3F4FF777777FF727171FF6B6C6CFF656565FF606060FF5B5B5BFF5555
        55FF51514FFF4B4B4BFF464647FF424242FFDDDDDEFFDADBDAFFD8D8D8FFD5D5
        D4FFC8C8CDFF030680FF161EAAFF03077BFB000000400000000F0000000C0000
        00310E199FFA5864D6FF0C149CFFE7E7ECFFF3F3F2FFF4F4F4FFF5F5F4FFF5F5
        F5FFF6F6F6FF7F7F7DFF797879FFBDBDBCFF6C6C6CFF666666FFB2B2B2FF5B5C
        5BFF565555FFA8A8A7FF4B4B4BFF474748FFDFDFDFFFDCDCDCFFD8D9D9FFD5D6
        D6FFCAC9CFFF030681FF171FABFF03087BFB0000003E0000000F0000000B0000
        002B0B1791EB515DD2FF111BA3FFCCCDE4FFF4F4F4FFF6F6F6FFF7F6F7FFF8F8
        F8FFF8F8F8FF858585FF7F807FFFC4C4C4FF727472FF6D6D6DFFB5B5B5FF6261
        62FF5C5C5DFFB1B1B1FF525252FF4B4D4DFFE0E0E0FFDDDDDCFFDADAD9FFD7D7
        D7FFB1B2C5FF060986FF151EA8FF030771EE000000380000000E000000090000
        00240A137AD04551CBFF1D28AEFFA3A6D5FFF6F6F5FFF8F7F7FFF8F9F8FFFAF9
        FAFFFAFAFAFF8D8E8DFF858787FFCBCBCBFF79797AFF747574FFBEBFBEFF6868
        68FF636262FFB8B8B8FF585658FF535253FFE1E1E1FFDEDEDEFFDADADBFFD7D8
        D7FF8C8DB7FF0A0F90FF131BA1FF03065ED7000000300000000C000000060000
        001B080F5AA93642C2FF2F3BBDFF7074C3FFF7F7F7FFF9F9F9FFFBFAFAFFFBFC
        FBFFFCFCFCFF949494FF8E8E8EFFD2D2D2FF828283FF7C7C7CFFC4C5C5FF7070
        70FF696969FFBFBEBEFF5F5F5FFF585858FFE1E1E1FFDFDEDFFFDBDBDCFFD8D8
        D8FF5D5FA6FF0F169BFF0F169BFF020547B40000002500000008000000040000
        0013050834732330B7FF4B57CDFF353DAFFFD6D7EBFFFAF9F9FFFBFBFBFFFDFD
        FDFFFDFDFDFF9B9B9BFF949694FFD9D9D9FF88888AFF838383FFCBCBCAFF7777
        77FF707170FFC5C5C5FF656565FF605F5FFFE2E2E1FFDEDFDEFFDBDBDBFFBBBB
        CCFF282B93FF161EA7FF0F1693FF020328800000001A00000005000000020000
        000B0101092F0C1580D24551CCFF2632B6FF8186CBFFFAFAFAFFFBFCFCFFFDFD
        FEFFFFFFFFFFA3A3A2FF9C9C9CFFDFDFDFFF908F8FFF8A8A8AFFD0D0D0FF7D7D
        7DFF777878FFC9C9C9FF6C6C6CFF666566FFE2E2E2FFDFDFDFFFDCDBDCFF6E71
        AFFF0E1598FF171FA7FF030967D90000083C0000001000000003000000000000
        000500000015060C49892A37BCFF4855CDFF3139B1FFB2B5DFFFFBFCFBFFFDFD
        FCFFFEFDFEFFD4D4D4FFBEBEBEFFE3E3E4FF979797FF909091FFD5D5D5FF8585
        84FF7F7F7DFFD0D1D0FF969696FFAAAAAAFFE2E2E2FFDFDFDFFF9C9DC3FF2227
        96FF1720AAFF151D9BFF02053A940000001E0000000800000001000000000000
        00020000000A01020E300B1376C23B49C6FF3845C2FF474FB7FFC3C6E5FFFBFC
        FCFFFCFCFCFFFBFCFBFFFAFBFAFFF9F9F9FF9E9E9EFF999999FFD7D8D7FF8D8B
        8DFF858785FFEAEAEBFFE7E7E8FFE5E5E5FFE2E1E1FFACAECBFF3B3F9EFF151D
        A5FF1D26A7FF04095FC900010B3C0000000F0000000300000000000000000000
        0001000000040000000F0508306118239BE54451CCFF323DBFFF474FB7FFB3B5
        DEFFFAFAFBFFF9FAFAFFF9F9F8FFF8F8F7FFA6A6A6FF9F9F9FFFDDDCDCFFAFAF
        AFFFBFBEBEFFEAEAEAFFE6E7E7FFE4E4E3FF9FA1C8FF3D41A1FF141DA4FF232D
        B0FF0F1582E80204276C00000016000000060000000100000000000000000000
        0000000000010000000600000012060B41771D28A7EF4451CDFF3845C3FF3039
        B2FF8286CBFFD6D8EBFFF7F7F7FFF5F6F6FFD1D1D2FFCECECEFFF0F0F0FFEEEE
        EEFFECECEBFFE8E8E9FFC6C7DAFF7578B9FF262C9EFF1922ABFF2932B4FF151B
        8FF0030636800000001900000009000000020000000100000000000000000000
        000000000000000000020000000600000011060A417417239BE33A48C6FF4854
        CCFF2731B6FF343CAFFF6F74C2FFA3A6D5FFCCCDE4FFE7E6ECFFE5E4EBFFC7C8
        DEFF9C9FCCFF686CB7FF2E34A2FF141DA5FF2834B7FF2A34B2FF121888E50306
        377C000000180000000900000002000000000000000000000000000000000000
        0000000000000000000000000002000000060000000E050831590A1376BB2937
        BCFF4451CCFF4B56CDFF303BBCFF1D27AEFF111BA4FF0C149CFF0A139AFF0E17
        9FFF161FA7FF212BB1FF333FBFFF3540BDFF242DABFF060D67BF030529600000
        0013000000080000000200000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000040000000901020E24070C
        497B0B1481C82430B7FF3642C1FF4451CBFF515DD2FF5864D6FF5763D4FF4F5A
        CFFF424DC6FF333DB9FF202AABFF080F74CB0408418001010C290000000D0000
        0006000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000050000
        00090102091C0508345C080E5A940A1379C00C1691E20D189FF70D179EF70B14
        8EE2081074C1060C55950307305E0101091F0000000C00000007000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00020000000400000006000000080000000A0000000C0000000D0000000D0000
        000D0000000B0000000A00000007000000050000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000200000003000000030000
        0003000000020000000200000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 80
    end
    object MenuBtn_Send: TdxBarLargeButton
      Caption = 'Send'
      Category = 0
      Hint = 'Send'
      Visible = ivNever
      OnClick = MenuBtn_SendClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004C543C810000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000097A776FF4C54
        3C81000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000097A776FF97A7
        76FF4C543C810000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000097A776FF97A7
        76FF97A776FF4C543C8100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF4C543C81000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF4C543C810000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF4C543C8100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF4C543C81000000000000
        00000000000034251648A77646E7B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF0000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF4B533A7E00000000000000000000
        000000000000A57445E4B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF0000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF4B533A7E0000000000000000000000000000
        000000000000B8824DFFB8824DFF000000005B40267EB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF0000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF4B533A7E000000000000000000000000000000000000
        000000000000B8824DFFB8824DFF5D422781000000005B40267EB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF5B40267EB8824DFFB882
        4DFF00000000000000000000000000000000000000000000000097A776FF97A7
        76FF97A776FF4B533A7E00000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFF5D422781000000005B40267EB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF5B40267E000000005B40267EB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF000000000000000097A776FF97A7
        76FF4B533A7E0000000000000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFF5D422781000000005B40
        267EB8824DFFB8824DFFB8824DFF5B40267E000000005D422781000000005B40
        267EB8824DFFB8824DFFB8824DFF5B40267E000000000000000097A776FF4B53
        3A7E000000005D42278100000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF5D4227810000
        00005B40267EB8824DFF5B40267E000000005D422781B8824DFF5D4227810000
        00005B40267EB8824DFF5B40267E000000005D422781000000004B533A7E0000
        00005D422781B8824DFF00000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF5D42
        2781000000005B40267E000000005D422781B8824DFFB8824DFFB8824DFF5D42
        2781000000005B40267E000000005D422781B8824DFF5D422781000000005D42
        2781B8824DFFB8824DFF00000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF5B40267E000000005D422781B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF5D422781000000005B40267EB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF5B40
        267E000000005D422781B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF5D422781000000005B40267EB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF5B40267E0000
        00005D422781B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF5D422781000000005B40267EB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFF5B40267E000000005D42
        2781B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF5D422781000000005B40267EB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFF5B40267E000000005D422781B882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF5D422781000000005B40267EB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFF5B40267E000000005D422781B8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF5D422781000000005B40
        267EB8824DFFB8824DFF00000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFF000000005D422781B8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF5D4227810000
        0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
        000000000000A77646E7B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFA77646E700000000000000000000000000000000000000000000
        0000000000002D20133F91663DC9B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF91663DC92D20133F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 80
    end
    object MenuBtn_FaultDownload: TdxBarLargeButton
      Caption = 'Fault Download'
      Category = 0
      Hint = 'Fault Download'
      Visible = ivAlways
      OnClick = MenuBtn_FaultDownloadClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000400000005000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000002000000060000000F000000150000000F0000
        0007000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000500000012321E1166A8653BFF2C180D660000
        0012000000050000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000030000000C0805032C9A613BEBD2A46EFF8C512FEC0704
        022D0000000C0000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000007000000175F3B23A4C49161FFD5A871FFBB8657FF5630
        1CA7000000180000000700000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000030000000F21140D4EB47A50FDD8AD78FFD4A86FFFD6AB76FFA569
        41FD1D110A500000001000000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002000000090201011D8C5B3AD6D2A878FFD6AB74FFD5A972FFD6AA73FFCD9F
        6DFF804D2DD90201011F00000009000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0005000000114A312083C49367FFDAB07DFFD6AB74FFD6AA74FFD6AA73FFD8AE
        79FFBA8357FF4629188700000013000000050000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000B130C0835B17A54F6DCB687FFD8AD78FFD7AD77FFD7AD76FFD6AC75FFD6AB
        75FFD8AF7DFFA26841F7110A06370000000C0000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000060000
        00137A5338BBD4AB81FFDAB37FFFD8AF79FFD9AF78FFD8AE78FFD7AD77FFD8AD
        77FFDAAF7BFFCB9D6FFF71452BBE000000160000000700000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000C3525
        1960C5946DFFDFBC8CFFD9B17CFFD9B17BFFD9B17BFFD9B07AFFD8AF7AFFD8AF
        79FFD8AE79FFDCB682FFB68158FF332014660000000E00000004000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000020000000709060420A879
        55E9E0C097FFDBB580FFDAB27EFFDAB27DFFDAB27DFFDAB27DFFDAB17CFFD9B0
        7BFFD9B07AFFD9B07CFFD8B282FF9A6643EA0805032300000008000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000040000000E674A349BD4AE
        89FFDFBB8CFFDBB580FFDBB581FFDBB581FFDBB480FFDBB47FFFDAB47EFFDAB3
        7EFFD9B27DFFDAB17CFFDCB684FFC99A70FF613F299F00000011000000050000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000009231A1242C39671FDE5C8
        9EFFDCB784FFDCB784FFDDB683FFDCB783FFDCB682FFDCB682FFDBB581FFDBB5
        80FFDAB380FFDAB37EFFDAB27DFFDEBC8CFFB58158FD21150E460000000B0000
        0002000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000005020201129B7152D3E2C5A2FFDFBD
        8CFFDEBB88FFE1C090FFE3C594FFE4C594FFE4C796FFE5C796FFE3C493FFE2C1
        90FFE0BE8DFFDEBA88FFDBB481FFDBB582FFD9B287FF906141D6020101160000
        0006000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000300000009523D2D79D4B08DFFE6CBA2FFE6CB
        9BFFE8CEA0FFE8CEA0FFE7CD9FFFE7CC9DFFE7CC9DFFE6CA9BFFE6C999FFE5C8
        98FFE4C696FFE4C595FFE3C393FFE0BF8DFFE1BF90FFC79A70FF4E35247E0000
        000C000000030000000000000000000000000000000000000000000000000000
        000000000000000000010000000515100C28BF9472F5EEDBBBFFEBD4A7FFEAD2
        A5FFEAD2A5FFEAD1A4FFE9D1A3FFEAD0A2FFE9CFA2FFE8CEA0FFE7CD9EFFE7CB
        9CFFE7CA9BFFE6C999FFE4C797FFE4C695FFE3C594FFE5C89EFFB2805BF6130D
        092C000000070000000100000000000000000000000000000000000000000000
        000000000000000000020000000787664DB3EAD8C5FFFBF6ECFFFAF6EBFFFAF6
        EBFFFAF6EAFFF6EDD7FFECD4A8FFEBD3A6FFEAD3A6FFE9D2A4FFE9D0A3FFE8CF
        A1FFE8CE9FFFEEDAB7FFF6EBD6FFF8F1E2FFF8F0E0FFF8EFDFFFE4CDB5FF7F5A
        3EB8000000090000000200000000000000000000000000000000000000000000
        0000000000000000000100000006C89A73FFC79973FFC69872FFC69871FFC597
        70FFC59770FFF8EFDBFFEDD8ACFFEDD7ABFFECD6A9FFECD5A9FFEBD4A7FFEAD2
        A5FFEAD1A4FFF0DEBCFFC18F69FFC18E67FFC18E67FFC08D66FFBF8D66FFBF8C
        65FF000000080000000200000000000000000000000000000000000000000000
        000000000000000000010000000300000006000000090000000A0000000C0000
        0011C79973FFF9F0DEFFEEDBB0FFEEDAAEFFEED9AEFFEED8ACFFEDD7ABFFECD6
        AAFFEBD4A8FFF2E1C1FFB8835DFF000000150000000F0000000D0000000C0000
        0008000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000200000002000000040000
        000AC99D77FFF9F3E2FFF1DEB4FFF0DDB3FFF0DDB1FFEFDCB1FFEEDAAFFFEED9
        ADFFEDD8ACFFF3E5C6FFBA8660FF0000000D0000000500000003000000020000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0008CA9F79FFFAF5E6FFF2E1B8FFF1E0B7FFF1DFB5FFF0DEB4FFF0DDB2FFEFDC
        B1FFEFDAB0FFF4E7CAFFBB8A64FF0000000A0000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0007CCA27CFFFBF6E7FFF3E3BAFFF3E3BAFFF2E2B9FFF2E1B8FFF2E0B6FFF1DE
        B5FFF0DDB3FFF5EACDFFBF8D66FF000000090000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0006CDA47EFFFCF7E9FFF4E6BEFFF4E5BDFFF3E5BCFFF3E3BAFFF3E3B9FFF2E1
        B8FFF1E0B6FFF7ECD2FFC09169FF000000080000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0005CFA680FFFCF8ECFFF5E8C0FFF5E8C0FFF5E6BFFFF5E6BDFFF4E5BCFFF3E4
        BBFFF3E2B9FFF7EED4FFC1936CFF000000070000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0003CFA983FFFEFCF6FFFEFCF6FFFDFCF6FFFDFCF5FFFDFBF4FFFDFBF4FFFDFB
        F4FFFDFBF4FFFDFBF3FFC3956FFF000000050000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002967A5FB8D0A985FFD1A984FFD0A984FFD0A883FFD0A883FFD0A882FFCFA8
        82FFCFA782FFCEA681FF8D6C51B9000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000020000000200000003000000030000000300000003000000030000
        0003000000030000000300000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 80
    end
    object MenuBtn_OpdataDownload: TdxBarLargeButton
      Caption = 'Opdata Download'
      Category = 0
      Hint = 'Opdata Download'
      Visible = ivAlways
      OnClick = MenuBtn_OpdataDownloadClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000400000005000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000002000000060000000F000000150000000F0000
        0007000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000500000012321E1166A8653BFF2C180D660000
        0012000000050000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000030000000C0805032C9A613BEBD2A46EFF8C512FEC0704
        022D0000000C0000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000007000000175F3B23A4C49161FFD5A871FFBB8657FF5630
        1CA7000000180000000700000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000030000000F21140D4EB47A50FDD8AD78FFD4A86FFFD6AB76FFA569
        41FD1D110A500000001000000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002000000090201011D8C5B3AD6D2A878FFD6AB74FFD5A972FFD6AA73FFCD9F
        6DFF804D2DD90201011F00000009000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0005000000114A312083C49367FFDAB07DFFD6AB74FFD6AA74FFD6AA73FFD8AE
        79FFBA8357FF4629188700000013000000050000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000B130C0835B17A54F6DCB687FFD8AD78FFD7AD77FFD7AD76FFD6AC75FFD6AB
        75FFD8AF7DFFA26841F7110A06370000000C0000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000060000
        00137A5338BBD4AB81FFDAB37FFFD8AF79FFD9AF78FFD8AE78FFD7AD77FFD8AD
        77FFDAAF7BFFCB9D6FFF71452BBE000000160000000700000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000030000000C3525
        1960C5946DFFDFBC8CFFD9B17CFFD9B17BFFD9B17BFFD9B07AFFD8AF7AFFD8AF
        79FFD8AE79FFDCB682FFB68158FF332014660000000E00000004000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000020000000709060420A879
        55E9E0C097FFDBB580FFDAB27EFFDAB27DFFDAB27DFFDAB27DFFDAB17CFFD9B0
        7BFFD9B07AFFD9B07CFFD8B282FF9A6643EA0805032300000008000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000040000000E674A349BD4AE
        89FFDFBB8CFFDBB580FFDBB581FFDBB581FFDBB480FFDBB47FFFDAB47EFFDAB3
        7EFFD9B27DFFDAB17CFFDCB684FFC99A70FF613F299F00000011000000050000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000009231A1242C39671FDE5C8
        9EFFDCB784FFDCB784FFDDB683FFDCB783FFDCB682FFDCB682FFDBB581FFDBB5
        80FFDAB380FFDAB37EFFDAB27DFFDEBC8CFFB58158FD21150E460000000B0000
        0002000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000005020201129B7152D3E2C5A2FFDFBD
        8CFFDEBB88FFE1C090FFE3C594FFE4C594FFE4C796FFE5C796FFE3C493FFE2C1
        90FFE0BE8DFFDEBA88FFDBB481FFDBB582FFD9B287FF906141D6020101160000
        0006000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000300000009523D2D79D4B08DFFE6CBA2FFE6CB
        9BFFE8CEA0FFE8CEA0FFE7CD9FFFE7CC9DFFE7CC9DFFE6CA9BFFE6C999FFE5C8
        98FFE4C696FFE4C595FFE3C393FFE0BF8DFFE1BF90FFC79A70FF4E35247E0000
        000C000000030000000000000000000000000000000000000000000000000000
        000000000000000000010000000515100C28BF9472F5EEDBBBFFEBD4A7FFEAD2
        A5FFEAD2A5FFEAD1A4FFE9D1A3FFEAD0A2FFE9CFA2FFE8CEA0FFE7CD9EFFE7CB
        9CFFE7CA9BFFE6C999FFE4C797FFE4C695FFE3C594FFE5C89EFFB2805BF6130D
        092C000000070000000100000000000000000000000000000000000000000000
        000000000000000000020000000787664DB3EAD8C5FFFBF6ECFFFAF6EBFFFAF6
        EBFFFAF6EAFFF6EDD7FFECD4A8FFEBD3A6FFEAD3A6FFE9D2A4FFE9D0A3FFE8CF
        A1FFE8CE9FFFEEDAB7FFF6EBD6FFF8F1E2FFF8F0E0FFF8EFDFFFE4CDB5FF7F5A
        3EB8000000090000000200000000000000000000000000000000000000000000
        0000000000000000000100000006C89A73FFC79973FFC69872FFC69871FFC597
        70FFC59770FFF8EFDBFFEDD8ACFFEDD7ABFFECD6A9FFECD5A9FFEBD4A7FFEAD2
        A5FFEAD1A4FFF0DEBCFFC18F69FFC18E67FFC18E67FFC08D66FFBF8D66FFBF8C
        65FF000000080000000200000000000000000000000000000000000000000000
        000000000000000000010000000300000006000000090000000A0000000C0000
        0011C79973FFF9F0DEFFEEDBB0FFEEDAAEFFEED9AEFFEED8ACFFEDD7ABFFECD6
        AAFFEBD4A8FFF2E1C1FFB8835DFF000000150000000F0000000D0000000C0000
        0008000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000200000002000000040000
        000AC99D77FFF9F3E2FFF1DEB4FFF0DDB3FFF0DDB1FFEFDCB1FFEEDAAFFFEED9
        ADFFEDD8ACFFF3E5C6FFBA8660FF0000000D0000000500000003000000020000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0008CA9F79FFFAF5E6FFF2E1B8FFF1E0B7FFF1DFB5FFF0DEB4FFF0DDB2FFEFDC
        B1FFEFDAB0FFF4E7CAFFBB8A64FF0000000A0000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0007CCA27CFFFBF6E7FFF3E3BAFFF3E3BAFFF2E2B9FFF2E1B8FFF2E0B6FFF1DE
        B5FFF0DDB3FFF5EACDFFBF8D66FF000000090000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0006CDA47EFFFCF7E9FFF4E6BEFFF4E5BDFFF3E5BCFFF3E3BAFFF3E3B9FFF2E1
        B8FFF1E0B6FFF7ECD2FFC09169FF000000080000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0005CFA680FFFCF8ECFFF5E8C0FFF5E8C0FFF5E6BFFFF5E6BDFFF4E5BCFFF3E4
        BBFFF3E2B9FFF7EED4FFC1936CFF000000070000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0003CFA983FFFEFCF6FFFEFCF6FFFDFCF6FFFDFCF5FFFDFBF4FFFDFBF4FFFDFB
        F4FFFDFBF4FFFDFBF3FFC3956FFF000000050000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002967A5FB8D0A985FFD1A984FFD0A984FFD0A883FFD0A883FFD0A882FFCFA8
        82FFCFA782FFCEA681FF8D6C51B9000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000020000000200000003000000030000000300000003000000030000
        0003000000030000000300000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 80
    end
    object MenuBtn_Version: TdxBarLargeButton
      Caption = 'Version'
      Category = 0
      Hint = 'Version'
      Visible = ivAlways
      OnClick = MenuBtn_VersionClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000700000007000000070000
        0007000000050000000400000002000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000070000000C0000001100000016000000190000001B0000001B0000
        001900000016000000120000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E000000181B12104D442D289668463DD16C483FD985594EFF84584EFF6C48
        3EDA66453CD1432C27971A120F500000001A0000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B000000162D1E
        1B6B764F44E2966E64FFB19187FFC9AFA6FFCEB5ADFFDECAC2FFDECAC2FFCEB5
        ACFFC8AEA5FFB08F86FF936A60FF724C43E22C1D196E000000190000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000E100B0A376C4A40D0A37E
        75FFCCB4ACFFDFCCC4FFDFCCC5FFDFCCC5FFDFCBC4FFDFCCC4FFDFCBC4FFDECB
        C3FFDFCBC3FFDFCBC3FFDECBC3FFCBB1A9FF9C766CFF68463DD1100B093A0000
        0011000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000F23181556875E53F0C5ACA3FFE1CE
        C6FFE0CDC6FFDDC6BCFFC99F8BFFB98063FFB47555FFA9623CFFAA613CFFB475
        55FFB97F63FFC89E8AFFDCC4BAFFE0CCC4FFDFCCC5FFBEA197FF81594EF12217
        145A000000120000000600000001000000000000000000000000000000000000
        000000000001000000040000000D23191554946D61FAD2BDB5FFE2D0C9FFE0CB
        C4FFC69A85FFAE6A45FFAC643EFFAD663EFFAD663FFFAD653FFFAD653FFFAC64
        3FFFAD643DFFAB633DFFAD6843FFC69983FFDECAC1FFE0CEC6FFCBB2AAFF8D64
        5AFA221714590000001000000005000000010000000000000000000000000000
        00000000000200000009150F0D398A655AEEDBC9C4FFE3D2CBFFDCC5BAFFB77A
        5AFFAE653FFFAF6641FFAF6741FFAF6841FFAF6842FFB06842FFB06842FFAF67
        41FFAE673FFFAE663FFFAD653FFFAC643EFFB6785AFFDAC2B7FFE1CFC8FFCFB7
        B0FF855D53EF140D0C3E0000000C000000030000000100000000000000000000
        00010000000500000011725147CBD2BEB8FFE4D4CDFFDEC8BEFFB3714DFFAF67
        40FFB06942FFB16943FFB06A42FFAE673FFFAB633CFFAA623BFFA9613BFFAA64
        3CFFAE663FFFAF6941FFAF6841FFAF6740FFAD653EFFB16E4BFFDDC5BAFFE3D1
        C9FFC0A59CFF6D4B43D000000016000000070000000100000000000000000000
        00020000000A32242065AD8A80FFECE0DCFFE4D3CCFFB87C5BFFB16942FFB26A
        44FFB36C45FFB26C45FFB06842FFD0AA96FFF2E8E4FFFFFFFFFFFFFFFFFFF0E5
        DFFFCFA894FFAE6640FFB06A43FFB16A43FFAF6741FFAE6640FFB67959FFE2CF
        C7FFE4D2CCFFA17C72FF2F211D6A0000000D0000000300000001000000010000
        00050000000F835E54DDE3D6D2FFE7D8D3FFCCA28CFFB26942FFB36C44FFB46E
        46FFB46E46FFB56E46FFB06941FFE4D0C2FFF7F0E9FFF7F0E9FFF8F3ECFFFBF8
        F5FFF6EFEBFFAF673FFFB36B45FFB16B44FFB26A43FFB06841FFAE663FFFCA9E
        89FFE4D4CEFFD0B9B2FF7B574CDF000000150000000600000001000000020000
        0007271D194FB08D83FFF4ECE9FFE5D3CCFFB4704AFFB46C46FFB56F46FFB770
        48FFB77047FFB67048FFB56E46FFB57856FFF7F1EAFFF8F1EAFFF7F1EBFFF8F2
        EDFFBE896DFFB26A43FFB56E46FFB46E46FFB36C45FFB26B43FFB16843FFB16D
        47FFE2CFC7FFE6D6D0FFA78177FF261B18570000000A00000002000000020000
        0009553E3892D2BDB7FFEFE5E2FFD4B1A0FFB46C44FFB77048FFB87149FFB871
        49FFB97249FFBB774DFFBF7C52FFB6754AFFEFE2D9FFF8F2EBFFF7F2ECFFFDFB
        FAFFB7764FFFBA774CFFB9734AFFB66F48FFB56E47FFB46E46FFB36B44FFAF68
        41FFCFA896FFE7D8D2FFC4AAA2FF503933970000000D00000003000000020000
        000B7B5B52C6E7DDD9FFEEE2DEFFC38D70FFB66F47FFB9724AFFB9734AFFBF7C
        52FFC5895CFFC88C5FFFC88C5FFFBC7F52FFECDFD5FFF8F2EDFFF9F3ECFFFFFE
        FEFFB8774DFFC28359FFC18358FFBE7E53FFBA764CFFB56F47FFB56E46FFB26B
        44FFC0896DFFE9DAD4FFD5C1BBFF74544BC90000001000000004000000030000
        000C997367ECF6F1F0FFEDE2DDFFBD7F5CFFB87249FFBD784FFFC78A5EFFCA91
        63FFCA9164FFCA9164FFCB9263FFBF8156FFEDE0D6FFF8F4EEFFF9F3EEFFFFFF
        FFFFBB7B51FFC6895CFFC4875BFFC28559FFC18257FFBD7C53FFB87149FFB46D
        46FFB97B57FFEADCD7FFE2D2CCFF8F695DED0000001200000004000000030000
        000CA57D71FAFDFCFCFFEDE4DFFFB97650FFBE7B51FFCB9266FFCD9668FFCE96
        68FFCE9668FFCE9768FFCC9466FFBC7F53FFF5EDE6FFF9F4EEFFFAF4EFFFFFFF
        FFFFBD7F54FFC88D61FFC88B5FFFC6895CFFC4865BFFC38459FFC07F54FFB871
        4AFFB5704AFFEBDED9FFE9DDD7FF9B7467FA0000001200000005000000030000
        000BA88075FAFDFCFCFFF1E8E3FFBE7F57FFCC9568FFCF996CFFD19A6CFFD09B
        6DFFD19B6EFFD09B6CFFC99164FFDBBEAAFFFAF5EFFFFAF5F0FFFAF5EFFFFFFF
        FFFFBF8258FFCB9265FFCA8F63FFC88D61FFC78A5FFFC5885CFFC38558FFBF7F
        54FFB67149FFECE0DCFFECE1DCFF9E776AFA0000001100000005000000020000
        0009A17D71ECF7F2F1FFF5EDEBFFCF9F7DFFCF9A6DFFD29D70FFD3A072FFD4A0
        72FFD3A072FFD49F72FFCA9467FFEBDACFFFFAF6F1FFFAF6F1FFFAF5F1FFFFFF
        FFFFC1865BFFCE9669FFCD9467FFCA9165FFC98F62FFC78B60FFC5885DFFC282
        59FFC18560FFEEE4DEFFEADEDAFF977266ED0000000F00000004000000020000
        000887695FC4EBE1DEFFFAF7F6FFD9B59AFFCF9C6FFFD4A175FFD5A377FFD6A5
        77FFD6A677FFD6A578FFD3A173FFC9956AFFD2AC92FFE6D4C7FFFBF6F1FFFDFB
        FAFFC88E61FFD09B6DFFCF986BFFCD9569FFCC9267FFC88E63FFC78C60FFC284
        5AFFCEA084FFF1E7E4FFE3D4CEFF7E6057C70000000D00000003000000010000
        0005604C448EDBC9C2FFFEFDFDFFEADACDFFD09D70FFD6A678FFD8A97CFFD9AA
        7CFFDAAA7DFFD9AA7DFFD6A679FFCD996DFFBF885CFFBB8057FFBD8259FFCA98
        71FFCF9A6FFFD49E71FFD29C70FFD19A6DFFCE966BFFCC9367FFC88E63FFC385
        5BFFDEC2B0FFF3EAE7FFD5C1BBFF5A453E920000000900000002000000010000
        00042D242147C5A79BFFFFFFFFFFF9F5F2FFD3A47DFFD6A77BFFDAAC81FFDCAD
        81FFDCAF82FFDCAF82FFD4A376FFD8B8A1FFFAF6F3FFEBDCD4FFD7B9A6FFC08A
        61FFD19E73FFD6A277FFD4A074FFD29D72FFD1996EFFCD966AFFC98F64FFC68D
        67FFF2E7E3FFF7F1EFFFBD9E93FF2B221E4D0000000600000001000000000000
        0002000000079F7F73DAEDE4E0FFFEFDFDFFEAD5C5FFD5A67CFFDAAF84FFDEB2
        86FFDDB386FFDFB487FFD4A67BFFF5ECE6FFFDF9F7FFFDFBFAFFFFFFFFFFEADA
        D0FFD09C70FFD8A77BFFD6A479FFD49F75FFD29D73FFCE976EFFC98F64FFDFC3
        B0FFF5EFECFFEADFDBFF97746ADC0000000C0000000400000001000000000000
        0001000000043E322E5ACAADA2FFFFFFFFFFFCFAF9FFDDBB9DFFDBAE84FFDFB4
        8AFFE0B88CFFE0B78CFFDDB387FFEDDBCBFFFCF9F6FFFBF9F5FFFDFBF8FFFCF9
        F7FFD4A379FFDAAB7FFFD8A77DFFD5A47AFFD39E73FFCE976CFFD2A686FFF6EF
        EDFFFAF7F5FFC5A59BFF3C2F2A5F000000070000000200000000000000000000
        0000000000020000000593786DC6E6D7D2FFFFFFFFFFFAF6F4FFDCB593FFDCB2
        89FFE0B98EFFE2BB90FFE2BB90FFE1B78EFFE9D2B9FFF6EEE5FFF9F3EEFFEBD5
        C1FFDCAF84FFDDAF83FFDAAA80FFD6A57AFFD29D74FFD1A07DFFF3EBE6FFF9F6
        F4FFE3D4CFFF8C7066C70000000A000000030000000100000000000000000000
        0000000000010000000219151326B5968AECF2EAE8FFFFFFFFFFFBF8F6FFE1C1
        A5FFDCB38AFFE1BA91FFE3BC94FFE3BD94FFE3BD93FFE3BB91FFE1B98FFFE0B6
        8DFFDFB389FFDCAF85FFD8A980FFD3A076FFD8B091FFF5EEEAFFFAF7F6FFF1E8
        E5FFB08F83ED1813122B00000005000000010000000000000000000000000000
        000000000000000000010000000331282544C4A598F9F0E8E5FFFFFFFFFFFDFC
        FBFFEFDFD2FFDDB792FFDFB68FFFE1B991FFE2BA92FFE1BA92FFE0B88FFFDFB3
        8BFFDBAF87FFD8A980FFD5A883FFE9D4C3FFF9F4F3FFFCFAF9FFEFE6E3FFBF9D
        91F92F2623480000000500000002000000000000000000000000000000000000
        00000000000000000000000000010000000331292544BA9B8EEEE7D8D3FFFFFF
        FFFFFFFEFEFFFCFAF9FFF2E4DAFFE7CEB7FFE3C4A8FFDAB18AFFD9B087FFE1C0
        A2FFE4C7AEFFEEDDD1FFFAF4F2FFFCFAFAFFFEFEFEFFE6D6D0FFB49589EE3027
        2447000000050000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000002181412229C8177C8D6BC
        B2FFF2E9E6FFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFCFFFDFCFBFFFDFBFAFFFDFC
        FBFFFEFCFBFFFEFDFDFFFFFFFFFFF1E9E6FFD3BAB0FF997D73C9171311250000
        0004000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000034136
        3154AC9083D9D1B4A8FFE3D1CBFFF2E9E5FFF4EEEBFFFEFEFEFFFEFEFEFFF4EE
        EBFFF1E8E5FFE2D0C9FFCFB2A5FFA88D81DA4236325900000005000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000003241E1C3065544D819C8378C5A3887DCDCAA89BFCC9A99AFCA289
        7DCE9B8277C564544D82231E1B32000000040000000300000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000300000003000000030000
        0003000000030000000200000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Width = 80
    end
  end
end
