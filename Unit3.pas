unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm3 = class(TForm)
    procedure CloseAction(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.CloseAction(Sender: TObject; var Action: TCloseAction);
begin
  Form1.StatusBar1.Panels.Items[1].Text:=' ';
  Action:=caFree;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  Form1.StatusBar1.Panels.Items[1].Text:=Self.Caption
end;

end.
