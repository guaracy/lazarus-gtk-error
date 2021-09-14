unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Buttons, Forms, Graphics, StdCtrls;
  //Classes, Buttons, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn18: TBitBtn;
    btn20: TBitBtn;
    btn24: TBitBtn;
    btn36: TBitBtn;
    btn48: TBitBtn;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  Pic:TPicture;
begin
  Pic:=TPicture.Create;
  Pic.LoadFromFile('res/ic_add_alert_maroon_20px.png');
  btn20.Glyph.Assign(Pic.Bitmap);
  Pic.LoadFromFile('res/ic_add_alert_maroon_36px.png');
  btn36.Glyph.Assign(Pic.Bitmap);
  Pic.Free;
end;

end.

