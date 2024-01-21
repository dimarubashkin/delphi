unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtPassword: TEdit;
    Label1: TLabel;
    pbStrenght: TProgressBar;
    Button1: TButton;
    procedure passwordStrenght(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.passwordStrenght(Sender: TObject);
var
  sWord: String;
  I, iScore: Integer;

begin
  iScore := 0;
  sWord := edtPassword.Text;

  case Length(sWord) of
    8 .. 10:
      iScore := iScore + 10;
    6 .. 7:
      iScore := iScore + 5;
    3 .. 5:
      iScore := iScore + 3;
    0 .. 2:
      iScore := iScore + 0;
  end;

  for I := 1 to Length(sWord) do
  begin
    case sWord[I] of
      'A' .. 'Z':
        iScore := iScore + 10;
      'a' .. 'z':
        iScore := iScore + 5;
      '0' .. '9':
        iScore := iScore + 10;
    else
      iScore := iScore + 2;
    end;
  end;
  if (iScore > 100) then
  begin
    iScore := 100;
  end;

  pbStrenght.Position := iScore;
end;

end.
