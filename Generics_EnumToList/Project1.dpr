program Project1;

uses
  Vcl.Forms,
  Generics.View.Principal in 'Generics.View.Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
