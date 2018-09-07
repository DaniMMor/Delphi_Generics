unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TProduto = class
  private
    FDescricao: string;
    procedure SetDescricao(const Value: string);
  published
    constructor Create;
    property Descricao : string read FDescricao write SetDescricao;
  end;

  TUtils = class
    class function IIF<t>(Condition : Boolean; T1, T2 : T) : T;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   Label1.Caption := TUtils.IIF<string>(Edit1.Text <> '', Edit1.Text, 'Vazio');
end;

{ TUtils }

class function TUtils.IIF<t>(Condition: Boolean; T1, T2: T): T;
begin
    if Condition then
       Result := T1
    else
       Result := T2;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Prod1, Prod2, Prod3 : TProduto;
begin
    Prod1 := TProduto.Create;
    Prod1.Descricao := 'Melancia';

    Prod3 :=  TUtils.IIF<TProduto>(Assigned(Prod2), Prod1, TProduto.Create );

    ShowMessage(Prod3.Descricao);
end;

{ TProduto }

constructor TProduto.Create;
begin
   FDescricao := 'Produto Generico';
end;

procedure TProduto.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

end.
