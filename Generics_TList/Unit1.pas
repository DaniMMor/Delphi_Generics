unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    ListaNum : TList<Integer>;
    procedure Notificacao(sender : TObject; const item : Integer; action : TCollectionNotification );
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ListaNum.Add(StrToInt(Edit1.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ListaNum.Delete(Pred(ListaNum.Count));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Clear;

  for I := 0 to Pred(ListaNum.Count) do
  Memo1.Lines.Add(ListaNum[i].ToString);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ListaNum.Capacity.ToString);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ListaNum.Count.ToString);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  ListaNum.OnNotify := Notificacao;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ListaNum.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   ListaNum := TList<integer>.Create;
end;

procedure TForm1.Notificacao(sender: TObject; const item: Integer;
  action: TCollectionNotification);
begin
   case Action of
     cnAdded: Memo1.Lines.Add('o item '+item.ToString+' foi add');
     cnRemoved: Memo1.Lines.Add('o item '+item.ToString+' foi del') ;
     cnExtracted:Memo1.Lines.Add('o item '+item.ToString+' foi extratcted') ;
   end;
end;

end.
