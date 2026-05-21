unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TForm2 = class(TForm)
    pnçFundo: TPanel;
    lblTitulo: TLabel;
    edtTarefas: TEdit;
    btnAdicionar: TPngBitBtn;
    clbTarefasConcluidas: TCheckListBox;
    Label1: TLabel;
    lblTarefasIncompletas: TLabel;
    lblTarefasConmpletas: TLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDConnection1: TFDConnection;
    memTarefasIncompletas: TMemo;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    // MOVEU PARA CÁ: Para o Delphi reconhecer o evento no Object Inspector,
    // ele precisa estar aqui em cima junto com os outros componentes!
    procedure clbTarefasConcluidasClickCheck(Sender: TObject);
  private
    procedure AtualizarListas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AtualizarListas;
var
  TextoTarefa: string;
  IdTarefa: Integer;
  StatusTarefa: string;
begin
  // 1. Limpa os dois componentes antes de recarregar do banco
  memTarefasIncompletas.Lines.Clear;
  clbTarefasConcluidas.Items.Clear;

  try
    // 2. BUSCA AS INCOMPLETAS PARA O MEMO
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT id, descricao FROM Tarefas WHERE status = ''Incompleta'' ORDER BY id ASC';
    FDQuery1.Open;

    while not FDQuery1.Eof do
    begin
      IdTarefa := FDQuery1.FieldByName('id').AsInteger;
      TextoTarefa := Format('[%d] - %s', [IdTarefa, FDQuery1.FieldByName('descricao').AsString]);

      // Alimenta o seu Memo de incompletas
      memTarefasIncompletas.Lines.Add(TextoTarefa);

      FDQuery1.Next;
    end;

    // 3. BUSCA TODAS AS TAREFAS PARA O CHECKLISTBOX (Espelhar tudo)
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'SELECT id, descricao, status FROM Tarefas ORDER BY id ASC';
    FDQuery1.Open;

    while not FDQuery1.Eof do
    begin
      IdTarefa := FDQuery1.FieldByName('id').AsInteger;
      StatusTarefa := FDQuery1.FieldByName('status').AsString;
      TextoTarefa := Format('[%d] - %s', [IdTarefa, FDQuery1.FieldByName('descricao').AsString]);

      // Adiciona no CheckListBox guardando o ID oculto em cada linha
      clbTarefasConcluidas.Items.AddObject(TextoTarefa, TObject(IdTarefa));

      // Se no banco ela já estiver concluída, deixa o Checkbox marcado
      if StatusTarefa = 'Concluida' then
        clbTarefasConcluidas.Checked[clbTarefasConcluidas.Count - 1] := True;

      FDQuery1.Next;
    end;

  except
    on E: Exception do
      ShowMessage('Erro ao carregar as tarefas: ' + E.Message);
  end;
end;

procedure TForm2.btnAdicionarClick(Sender: TObject);
begin
  if Trim(edtTarefas.Text) = '' then
  begin
    ShowMessage('Por favor, digite uma tarefa!');
    edtTarefas.SetFocus;
    Exit;
  end;

  try
    FDQuery1.Close;
    FDQuery1.SQL.Text := 'INSERT INTO Tarefas (descricao, status) VALUES (:descricao, ''Incompleta'')';
    FDQuery1.ParamByName('descricao').AsString := edtTarefas.Text;
    FDQuery1.ExecSQL;

    edtTarefas.Clear;
    edtTarefas.SetFocus;

    // Recarrega tudo (vai para o Memo como pendente e para o CheckList como desmarcada)
    AtualizarListas;

  except
    on E: Exception do
      ShowMessage('Erro ao salvar tarefa: ' + E.Message);
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  AtualizarListas;
end;

procedure TForm2.clbTarefasConcluidasClickCheck(Sender: TObject);
var
  Idx: Integer;
  IdTarefa: Integer;
  TextoCompleto: string;
begin
  Idx := clbTarefasConcluidas.ItemIndex;

  if Idx = -1 then Exit;

  // Só faz a ação se o usuário MARCOU o quadradinho (Checked = True)
  if clbTarefasConcluidas.Checked[Idx] then
  begin
    IdTarefa := Integer(clbTarefasConcluidas.Items.Objects[Idx]);
    TextoCompleto := clbTarefasConcluidas.Items[Idx];

    try
      // Atualiza no SQL Server 2014
      FDQuery1.Close;
      FDQuery1.SQL.Text := 'UPDATE Tarefas SET status = ''Concluida'' WHERE id = :id';
      FDQuery1.ParamByName('id').AsInteger := IdTarefa;
      FDQuery1.ExecSQL;

      // Mensagem personalizada que você pediu
      ShowMessage('Parabéns! Você realizou a tarefa: ' + #13 + TextoCompleto);

      // Atualiza os dois componentes (Soma do Memo e atualiza o CheckList)
      AtualizarListas;

    except
      on E: Exception do
      begin
        clbTarefasConcluidas.Checked[Idx] := False; // Desmarca se der erro
        ShowMessage('Erro ao concluir tarefa: ' + E.Message);
      end;
    end;
  end;
end;

end.
