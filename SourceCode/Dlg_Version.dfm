object FormVersion: TFormVersion
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Version'
  ClientHeight = 168
  ClientWidth = 428
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ___pnBase: TPanel
    Left = 0
    Top = 0
    Width = 428
    Height = 168
    Align = alClient
    BevelOuter = bvNone
    Color = 3947580
    ParentBackground = False
    TabOrder = 0
    object lb_Program_Title: TLabel
      Left = 24
      Top = 24
      Width = 316
      Height = 29
      Caption = 'H2 Tram Data Downloader'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_Version: TLabel
      Left = 287
      Top = 98
      Width = 110
      Height = 18
      Caption = 'Version : 0.0.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_UpdateDate: TLabel
      Left = 120
      Top = 122
      Width = 277
      Height = 18
      Caption = 'Update Date : 2023-08-27  PM 19:59'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
