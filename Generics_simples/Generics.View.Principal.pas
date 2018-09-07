unit Generics.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TKeyValue<t> = class
  private
    FKey: string;
    FValue: T;
    procedure SetKey(const Value: string);
    procedure SetValue(const Value: T);
  published
    property Key : string read FKey write SetKey;
    property Value : T read FValue write SetValue;
  end;

  TForm1 = class(TForm)
    btn1: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure btn1Click(Sender: TObject);
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

{ TKeyValue<t> }

procedure TKeyValue<t>.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TKeyValue<t>.SetValue(const Value: T);
begin
  FValue := Value;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  KV : TKeyValue<tForm>;
begin
   KV := TKeyValue<tForm>.Create;
   try
     KV.Key := 'F1';
     KV.Value := Self;

     ShowMessage(KV.Key + ' - ' + KV.Value.Name);

   finally
     KV.free;
   end;


end;

procedure TForm1.Button1Click(Sender: TObject);
var
  KV : TKeyValue<TButton>;
begin
  KV := TKeyValue<TButton>.Create;
  try
    KV.Key := 'B1';
    KV.Value := Sender as TButton;

    ShowMessage(KV.Key + ' - ' + kv.Value.Name);
  finally
    KV.Free;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
 kv : TKeyValue<Integer>;
begin
 kv := TKeyValue<integer>.create;
 try
   kv.Key := 'I1';
   kv.Value := 100;

   ShowMessage(kv.Key + ' - ' + kv.Value.ToString);

 finally
  kv.Free;
 end;

end;

end.
