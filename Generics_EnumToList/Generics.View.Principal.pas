unit Generics.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDias = (Segunda, Terca, Quarta, Quinta, Sexta, Sabado, Domingo);
  TMes = (Janeiro, Fevereiro, Marco, Abril, Maio, Junho);

  TEnumUtils<t> = class
    class procedure EnumToList(value : TStrings);
  end;


  TMeuGenerico = array[0..9] of string;
  TMeuArrayGenerico<t> = class
    FArray : array[0..9] of t;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TMeuGenericoA = TMeuArrayGenerico<string>;

var
  Form1: TForm1;


implementation

uses
  System.TypInfo;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  aux1 : TMeuGenerico;
  aux2 : TMeuGenerico;
  aux3 : array[0..9] of string;
  aux4 : array[0..9] of string;

begin
 //aux1 := aux2;

 //aux3 := aux4;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  aux1 : TMeuArrayGenerico<string>;
  aux2 : TMeuArrayGenerico<string>;
  aux3 : TMeuGenericoA;
  aux4 : TMeuGenericoA;
begin
  aux1 := aux2;
  aux1 := aux4;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  TEnumUtils<TMes>.EnumToList(ComboBox1.Items);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   TEnumUtils<TDias>.EnumToList(ComboBox1.Items);
end;

{ TEnumUtils<t> }

class procedure TEnumUtils<t>.EnumToList(value: TStrings);
var
  aux : string;
  i : Integer;
  Pos : Integer;
begin
  value.Clear;
  i := 0;
  repeat
    Aux := GetEnumName(TypeInfo(T), i);
    Pos := GetEnumValue(TypeInfo(T),aux);
    if Pos <> -1 then value.Add(aux);
    Inc(i);
  until Pos < 0 ;
end;

end.
