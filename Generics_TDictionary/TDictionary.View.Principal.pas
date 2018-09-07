unit TDictionary.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections;

type
  TPessoa = record
    Nome : string;
    CPF  : string;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    edtCPF: TEdit;
    edtNome: TEdit;
    Memo1: TMemo;
    Button12: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
    Lista : TDictionary<string,TPessoa>;
    procedure KeyNotify(Sender: TObject; const Item: string;
      Action: TCollectionNotification);
    procedure ValueNotify(Sender: TObject; const Item: TPessoa;
      Action: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
begin
   Lista.Clear;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Lista.OnKeyNotify := KeyNotify;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
   Lista.OnValueNotify := ValueNotify;
end;

procedure TForm1.ValueNotify(Sender : TObject; const Item : TPessoa; Action: TCollectionNotification);
begin
  case Action of
    cnAdded: Memo1.Lines.Add('O valor ' + Item.Nome + ' foi adicionada' );
    cnRemoved: Memo1.Lines.Add('O valor ' + Item.Nome + ' foi removida' );
    cnExtracted: Memo1.Lines.Add('O valor ' + Item.Nome + ' foi extraida' );
  end;
end;

procedure TForm1.KeyNotify(Sender : TObject; const Item : string; Action: TCollectionNotification);
begin
  case Action of
    cnAdded: Memo1.Lines.Add('A chave ' + Item + ' foi adicionada' );
    cnRemoved: Memo1.Lines.Add('A chave ' + Item + ' foi removida' );
    cnExtracted: Memo1.Lines.Add('A chave ' + Item + ' foi extraida' );
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 Pessoa : TPessoa;
begin
 Pessoa.Nome := EdtNome.Text;
 Pessoa.CPF := EdtCPF.Text;

 Lista.Add(Pessoa.CPF,Pessoa);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 Pessoa : TPessoa;
begin
  if Lista.TryGetValue(edtCPF.Text,Pessoa) then
    Memo1.Lines.Add(Pessoa.CPF + ' - ' + Pessoa.Nome)
  else
    Memo1.Lines.Add('Usuario não encontrado');

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Lista.Remove(edtCPF.Text);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Lista.TrimExcess;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   if Lista.ContainsKey(edtCPF.text)then
      Memo1.Lines.Add('Chave encontrada')
   else
      Memo1.Lines.Add('Chave não encontrada');
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 Pessoa : TPessoa;
begin
  Pessoa.Nome := edtNome.Text;
  Pessoa.CPF := edtCPF.Text;

  if Lista.ContainsValue(Pessoa) then
    Memo1.Lines.Add('Pessoa encontrada')
  else
    Memo1.Lines.Add('Pessoa não encontrada');

end;

procedure TForm1.Button7Click(Sender: TObject);
var
  Pessoa : TPessoa;
begin
 Pessoa.Nome := edtNome.Text;
 Pessoa.CPF := edtCPF.Text;

  Lista.AddOrSetValue(edtCPF.Text,Pessoa);
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  key : string;
begin
   for key in Lista.Keys do
     Memo1.Lines.Add(key);
end;

procedure TForm1.Button9Click(Sender: TObject);
var
 pessoa : TPessoa;
begin
  for pessoa in Lista.Values do
   Memo1.Lines.Add(pessoa.nome);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Lista := TDictionary<String,TPessoa>.create;
end;


end.
