unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ExtDlgs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure CloseAction(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ImageInput: TImage;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
  If Self.OpenPictureDialog1.Execute then begin
      Self.Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName)
  end;
end;

procedure TForm2.CloseAction(Sender: TObject; var Action: TCloseAction);
begin
  Form1.StatusBar1.Panels.Items[1].Text:=' ';
  Action:=caFree
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  Form1.StatusBar1.Panels.Items[1].Text:=Self.Caption
end;

end.
