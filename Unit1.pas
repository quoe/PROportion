unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CLIPBrd, ImgList;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    ButtonedEdit1: TButtonedEdit;
    ImageList1: TImageList;
    ButtonedEdit2: TButtonedEdit;
    ButtonedEdit3: TButtonedEdit;
    ButtonedEdit4: TButtonedEdit;
    ButtonedEdit5: TButtonedEdit;
    ButtonedEdit6: TButtonedEdit;
    ButtonedEdit7: TButtonedEdit;
    ButtonedEdit8: TButtonedEdit;
    ButtonedEdit9: TButtonedEdit;
    ButtonedEdit10: TButtonedEdit;
    ButtonedEdit11: TButtonedEdit;
    ButtonedEdit12: TButtonedEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ButtonedEdit1RightButtonClick(Sender: TObject);
    procedure ButtonedEdit2RightButtonClick(Sender: TObject);
    procedure ButtonedEdit3RightButtonClick(Sender: TObject);
    procedure ButtonedEdit4RightButtonClick(Sender: TObject);
    procedure ButtonedEdit5RightButtonClick(Sender: TObject);
    procedure ButtonedEdit6RightButtonClick(Sender: TObject);
    procedure ButtonedEdit7RightButtonClick(Sender: TObject);
    procedure ButtonedEdit8RightButtonClick(Sender: TObject);
    procedure ButtonedEdit9RightButtonClick(Sender: TObject);
    procedure ButtonedEdit10RightButtonClick(Sender: TObject);
    procedure ButtonedEdit11RightButtonClick(Sender: TObject);
    procedure ButtonedEdit12RightButtonClick(Sender: TObject);
    procedure ButtonedEdit1LeftButtonClick(Sender: TObject);
    procedure ButtonedEdit3LeftButtonClick(Sender: TObject);
    procedure ButtonedEdit2LeftButtonClick(Sender: TObject);
    procedure ButtonedEdit4LeftButtonClick(Sender: TObject);
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
var n1, n2, n3, n4: double;
begin
  try
    ButtonedEdit1.Text := StringReplace(ButtonedEdit1.Text, '.', ',', [rfReplaceAll, rfIgnoreCase]);
    ButtonedEdit2.Text := StringReplace(ButtonedEdit2.Text, '.', ',', [rfReplaceAll, rfIgnoreCase]);
    ButtonedEdit3.Text := StringReplace(ButtonedEdit3.Text, '.', ',', [rfReplaceAll, rfIgnoreCase]);
    ButtonedEdit4.Text := StringReplace(ButtonedEdit4.Text, '.', ',', [rfReplaceAll, rfIgnoreCase]);

    if ButtonedEdit1.Text = '' then ButtonedEdit1.Text := '0';
    if ButtonedEdit2.Text = '' then ButtonedEdit2.Text := '0';
    if ButtonedEdit3.Text = '' then ButtonedEdit3.Text := '0';
    if ButtonedEdit4.Text = '' then ButtonedEdit4.Text := '0';
    n1 := StrToFloat(ButtonedEdit1.Text);
    n2 := StrToFloat(ButtonedEdit2.Text);
    n3 := StrToFloat(ButtonedEdit3.Text);
    n4 := StrToFloat(ButtonedEdit4.Text);

    if n1 = 0 then ButtonedEdit1.Text := FloatToStr(n2*n3/n4);
    if n2 = 0 then ButtonedEdit2.Text := FloatToStr(n1*n4/n3);
    if n3 = 0 then ButtonedEdit3.Text := FloatToStr(n1*n4/n2);
    if n4 = 0 then ButtonedEdit4.Text := FloatToStr(n2*n3/n1);

    n1 := StrToFloat(ButtonedEdit1.Text);
    n2 := StrToFloat(ButtonedEdit2.Text);
    n3 := StrToFloat(ButtonedEdit3.Text);
    n4 := StrToFloat(ButtonedEdit4.Text);

    ButtonedEdit5.Text := FloatToStr(n1 - n2);
    ButtonedEdit6.Text := FloatToStr(n3 - n4);
    ButtonedEdit7.Text := FloatToStr(n1 - n3);
    ButtonedEdit8.Text := FloatToStr(n2 - n4);

    ButtonedEdit9.Text := FloatToStr(n1 + n3);
    ButtonedEdit10.Text := FloatToStr(n2 + n4);
    ButtonedEdit11.Text := FloatToStr(n1 + n2);
    ButtonedEdit12.Text := FloatToStr(n3 + n4);
  Except
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ButtonedEdit1.Text := '';
  ButtonedEdit2.Text := '';
  ButtonedEdit3.Text := '';
  ButtonedEdit4.Text := '';
  ButtonedEdit5.Text := '';
  ButtonedEdit6.Text := '';
  ButtonedEdit7.Text := '';
  ButtonedEdit8.Text := '';
  ButtonedEdit9.Text := '';
  ButtonedEdit10.Text := '';
  ButtonedEdit11.Text := '';
  ButtonedEdit12.Text := '';
end;

procedure TForm1.ButtonedEdit10RightButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit10.Text;
end;

procedure TForm1.ButtonedEdit11RightButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit11.Text;
end;

procedure TForm1.ButtonedEdit12RightButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit12.Text;
end;

procedure TForm1.ButtonedEdit1LeftButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit1.Text;
end;

procedure TForm1.ButtonedEdit1RightButtonClick(Sender: TObject);
begin
  ButtonedEdit1.Text := '';
end;

procedure TForm1.ButtonedEdit2LeftButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit2.Text;
end;

procedure TForm1.ButtonedEdit2RightButtonClick(Sender: TObject);
begin
  ButtonedEdit2.Text := '';
end;

procedure TForm1.ButtonedEdit3LeftButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit3.Text;
end;

procedure TForm1.ButtonedEdit3RightButtonClick(Sender: TObject);
begin
  ButtonedEdit3.Text := '';
end;

procedure TForm1.ButtonedEdit4LeftButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit4.Text;
end;

procedure TForm1.ButtonedEdit4RightButtonClick(Sender: TObject);
begin
  ButtonedEdit4.Text := '';
end;

procedure TForm1.ButtonedEdit5RightButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit5.Text;
end;

procedure TForm1.ButtonedEdit6RightButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit6.Text;
end;

procedure TForm1.ButtonedEdit7RightButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit7.Text;
end;

procedure TForm1.ButtonedEdit8RightButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit8.Text;
end;

procedure TForm1.ButtonedEdit9RightButtonClick(Sender: TObject);
begin
  Clipboard.AsText := ButtonedEdit9.Text;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if not CheckBox1.Checked then
  begin
    Form1.FormStyle := fsNormal;
  end
  else
  begin
    Form1.FormStyle := fsStayOnTop;
  end;
end;

end.
