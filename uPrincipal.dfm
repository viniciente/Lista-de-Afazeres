object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Lista de Afazeres'
  ClientHeight = 553
  ClientWidth = 600
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 553
    Align = alClient
    Color = 15132390
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 550
    object pnlTop: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 592
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 586
        Height = 32
        Align = alTop
        Alignment = taCenter
        Caption = 'Lista de Afazeres'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10485760
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 192
      end
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 41
        Width = 586
        Height = 36
        Align = alClient
        Alignment = taCenter
        Caption = 'Digite uma tarefa pendente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsUnderline]
        ParentFont = False
        ExplicitWidth = 239
        ExplicitHeight = 28
      end
    end
    object pnlAdicionar: TGridPanel
      AlignWithMargins = True
      Left = 4
      Top = 90
      Width = 592
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 75.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = edtTarefas
          Row = 0
        end
        item
          Column = 1
          Control = btnAdicionar
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 1
      object edtTarefas: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 434
        Height = 40
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 28
      end
      object btnAdicionar: TPngBitBtn
        AlignWithMargins = True
        Left = 449
        Top = 5
        Width = 138
        Height = 40
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Caption = 'ADICIONAR'
        TabOrder = 1
        OnClick = btnAdicionarClick
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000076000000
          76014E7B26080000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000013E4944415478DAA5D32F48834118C7F17759
          14C430D70C2675630E0606A30671561D0B46D914A3D886C564F20F98C420A241
          34889B8C61120C629938C16212740A82580C8ADF079E078E97535EF1810F07F7
          DEFDEEEE7DEF8D05FFAC98A72F8179E4D08B2FDCE104EB68FD16308E1DEC630F
          37F844065398C40C0E7C01F27005795CFCB06309AA62CE422CA05B57CB8526A7
          B46D387D5954D087670B58462766432B2E855AAB2D3CA06C01D728E13C62C030
          D6E44816F08E1EBCE8B6C7B47F44DBBAB6155DAC0BF7E8B080967EB2370D2838
          2B05CECE7635A01D8F68B3802B2CE02CE21186B089410B58D423942206C8857A
          755FA27CC6264675375649E7255BA551C3801CDDBD4872D3563181CBC05F32F9
          48777A2A1DE1AB2CB77103C7D8C62D3E7427055DA488439BE0FB99E298D6C1FD
          3A4682EC677A7207FB02FE54DFD8784311277FCC090000000049454E44AE4260
          82}
      end
    end
    object pnlTarefasIncompletas: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 146
      Width = 592
      Height = 203
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      ExplicitHeight = 200
      object lblTarefasIncompletas: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 586
        Height = 21
        Align = alTop
        Alignment = taCenter
        Caption = 'Lista de Tarefas Incompletas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ExplicitWidth = 214
      end
      object lbTarefasIncompletas: TListBox
        Left = 0
        Top = 27
        Width = 592
        Height = 176
        Align = alClient
        ItemHeight = 20
        TabOrder = 0
        OnDblClick = lbTarefasIncompletasDblClick
        ExplicitLeft = 184
        ExplicitTop = 64
        ExplicitWidth = 121
        ExplicitHeight = 97
      end
    end
    object pnlListaCompleta: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 355
      Width = 592
      Height = 194
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      ExplicitTop = 352
      DesignSize = (
        592
        194)
      object lblTarefasConmpletas: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 586
        Height = 21
        Align = alTop
        Alignment = taCenter
        Caption = 'Lista de Tarefas Realizadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ExplicitWidth = 201
      end
      object clbTarefasConcluidas: TCheckListBox
        AlignWithMargins = True
        Left = 3
        Top = 30
        Width = 586
        Height = 161
        OnClickCheck = clbTarefasConcluidasClickCheck
        Align = alClient
        ItemHeight = 13
        Style = lbOwnerDrawFixed
        TabOrder = 0
      end
      object btnLimpar: TPngBitBtn
        AlignWithMargins = True
        Left = 248
        Top = 167
        Width = 137
        Height = 25
        Anchors = [akTop]
        Caption = 'LIMPAR LISTA'
        TabOrder = 1
        OnClick = btnLimparClick
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000059000000
          5901AA9DA9860000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A000002494944415478DA6364200F70AAC9F01E6764
          6478C4488E6E2509EE8EAE4CA3A2BAF9978E936380A0AB91C43935393EAEF95B
          EF7B936C80B214EF8289394671A5D3CFEFB8FEF89317A9064887DACB9D006A62
          5E75F0910D907F8F240334E4F8B64CCC36F6CA9F7A76D98D479F624062441920
          292A60C7C3C591CFC6F4D3494C80EDF3FEF32F8D80C26FD00D105214E2EBBBFF
          EE533190FD16262822C817E96EA335696A5DACC8B5BBCFFEC695CD3C74E7D11B
          27983CB20146623C9CFBDE7FF9EEFA9B81E13448804F4C2C8E4356AD478AF92B
          634B921DAFB7833EBB7958CB995397EE99C20DE06163D316E1668F7DF0FE730F
          90FF0E88FF01B1B0929CE882201763AB53B75FFD156F58C1F570CDACDF520F8E
          FCB977F7C9F54BB79ED8C10D501711B8D0EE62A65FB6F3C4C63BEF3F15A9294A
          B429498B584CAC89965396156564666662D877F2D6EB4D2C46AF4FBFFCA77563
          52CDBC770FEE24C30D5015E65B20C0C1EEF2F6DBCF36465E76C3C935D1C99E76
          7A8C176F3C66A89FBC81615E5B12032F3707C3D397EFFF7BE54CFF78EBE9DBA8
          BF9F3E6D470F0310CD03C41C56462A47CD7415554182CDF9410C771EBE64D8B8
          F73C437D8E3F4358C18C87AB779CD2024A7D43314049887F0EC3FF7FEEF7DE7F
          561511E1315796125BB1736EB10437173B50D33486F96DC90C7C3C1C0C7A7E75
          E7AEDC7E6A8C1CC56003A47839AD3959D8FCEFBEFF5806E2F3F0B069CA8A0B2F
          929716D1490AB2E108F530653873E5014370CED4CE472FDE566018800BF071B3
          BB4B890B678B0872CBBE7AF759E4D6FD17A0F8BF8DAC06008CF0CA76E1CC8C47
          0000000049454E44AE426082}
      end
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT id,'
      '       descricao,'
      '   status'
      'FROM Tarefas'
      'ORDER BY id')
    Left = 544
    Top = 80
  end
  object DataSource1: TDataSource
    Left = 496
    Top = 80
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=listaAfazeres'
      'Server=DC-TR-06-VM\SERVERCURSO'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 488
    Top = 32
  end
end
