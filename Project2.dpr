program Project2;

uses
  Forms,
  POOP in 'POOP.pas' {Form1},
  UOOP in 'UOOP.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
