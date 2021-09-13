unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  ExtCtrls, BGRABitmap, BGRABitmapTypes, LCLIntf, LCLType, Clipbrd;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

const
  path = '/home/guaracy/devel/android/lazarus-gtk-error/res/materialicons/';
  im1  = 'dt_192.png';
  im2  = 'dt_192.TPicture.png';
  im3  = 'dt_192.TBGRABitmap.png';

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  pic:TPicture;
  bmp:TBGRABitmap;
begin
  pic:=TPicture.Create;
  pic.LoadFromFile(path+im1);
  bmp:=TBGRABitmap.Create(path+im1);
  BitBtn1.Glyph.Assign(pic.Bitmap);
  BitBtn2.Glyph.Assign(bmp.Bitmap);
  SpeedButton1.Glyph.Assign(pic.Bitmap);
  SpeedButton2.Glyph.Assign(bmp.Bitmap);
  bmp.SaveToFile(path+im2);
  pic.SaveToFile(path+im3);
  bmp.free;
  pic.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  bmpc:TBitmap;
  bmp:TBGRABitmap;
  BlendColor: TBGRAPixel;
begin
  BlendColor:=BGRA(255,0,0);
  bmp:=TBGRABitmap.Create(path+im1);
  bmp.Blend(BlendColor,boLinearBlend,true);
  image1.Picture.Bitmap.Assign(bmp.Bitmap);
  image1.Picture.SaveToClipboardFormat(CF_Bitmap);
  bmp.SaveToFile(path+im3);
  //bmp.Bitmap.SaveToClipboardFormat(CF_Bitmap);
  bmp.Free;
end;

{
boLinearBlend,
boTransparent,
boLighten, boScreen, boAdditive, boLinearAdd, boColorDodge, boDivide, boNiceGlow, boSoftLight, boHardLight,
boGlow, boReflect, boOverlay, boDarkOverlay, boDarken, boMultiply, boColorBurn,
boDifference, boLinearDifference, boExclusion, boLinearExclusion, boSubtract, boLinearSubtract, boSubtractInverse, boLinearSubtractInverse,
boNegation, boLinearNegation,
boXor,
boSvgSoftLight,
boMask,
boLinearMultiplySaturation, boLinearHue, boLinearColor, boLinearLightness, boLinearSaturation,
boCorrectedHue, boCorrectedColor, boCorrectedLightness, boCorrectedSaturation
 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button1.Caption:=im1;
end;

end.

