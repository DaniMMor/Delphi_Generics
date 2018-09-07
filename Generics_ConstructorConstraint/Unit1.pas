unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPessoa = class
  private
    FNome: string;
    procedure SetNome(const Value: string);
  published
    property Nome : string read FNome write SetNome;
  end;

  TNFe<t : Constructor> = class
    FGeneric : T;
    Constructor Create;
    function GetGeneric : T;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
var
  Nfe : TNFe<TPessoa>;
begin
  Nfe := TNFe<TPessoa>.Create;

  try
    Nfe.FGeneric.Nome := 'Daniel';

    ShowMessage(Nfe.FGeneric.Nome);
  finally
    Nfe.Free;
  end;

end;

{ TPessoa }

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

{ TNFe<t> }

constructor TNFe<t>.Create;
begin
  FGeneric := T.create;
end;

function TNFe<t>.GetGeneric: T;
begin

end;

end.
