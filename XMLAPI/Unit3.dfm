object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 29
    Width = 97
    Height = 15
    Caption = 'Son G'#252'ncelleme ='
  end
  object Label2: TLabel
    Left = 8
    Top = 50
    Width = 50
    Height = 15
    Caption = 'S'#305'cakl'#305'k ='
  end
  object Label3: TLabel
    Left = 8
    Top = 71
    Width = 70
    Height = 15
    Caption = 'R'#252'zgar H'#305'z'#305' ='
  end
  object LabelUpload: TLabel
    Left = 120
    Top = 29
    Width = 9
    Height = 15
    Caption = '...'
  end
  object LabelTemp: TLabel
    Left = 120
    Top = 50
    Width = 9
    Height = 15
    Caption = '...'
  end
  object LabelWind: TLabel
    Left = 120
    Top = 71
    Width = 9
    Height = 15
    Caption = '...'
  end
  object Image1: TImage
    Left = 368
    Top = 29
    Width = 217
    Height = 105
  end
  object ComboBox1: TComboBox
    Left = 0
    Top = 0
    Width = 628
    Height = 23
    Align = alTop
    TabOrder = 0
    Text = 'Se'#231
    OnChange = ComboBox1Change
    Items.Strings = (
      #304'zmir'
      #304'stanbul'
      'Ankara'
      'Manisa')
    ExplicitWidth = 626
  end
  object Memo1: TMemo
    Left = 0
    Top = 144
    Width = 628
    Height = 298
    Align = alBottom
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    ExplicitTop = 140
    ExplicitWidth = 626
  end
  object RESTClient1: TRESTClient
    Accept = #304'zmir'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://api.weatherapi.com/v1/current.xml'
    Params = <
      item
        Name = 'key'
        Value = 'a2e17c854c044ae48bd75704232211'
      end
      item
        Name = 'q'
        Value = #304'zmir'
      end>
    SynchronizedEvents = False
    Left = 440
    Top = 352
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 440
    Top = 224
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/xml'
    Left = 440
    Top = 280
  end
end
