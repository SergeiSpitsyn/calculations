unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Plotn, Vyazk, SkorP, KForm, Diamt, Dlina: Real; //переменные для считывания
                                                  //введённых вручную значений
  Rein, HkD, Fsi, Fkgs: real; //переменная для проведения расчётов

implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
    Plotn := strtofloat(edit1.text);
    Vyazk := strtofloat(edit2.text);
    SkorP := strtofloat(edit3.text);
    KForm := strtofloat(edit4.text);
    Diamt := strtofloat(edit5.text);
    Dlina := strtofloat(edit6.text);
    if (Plotn > 0) and (Vyazk > 0) and (SkorP >= 0) and (KForm >= 0)
    and (Diamt >= 0) and (Dlina >= 0) then
    begin
        Rein := 1/Vyazk*SkorP*Diamt;
        HkD  := Dlina/Diamt;
        Fsi  := (KForm/2)*Plotn*SkorP*SkorP*Diamt*Dlina;
        Fkgs := (KForm/2)*Plotn*SkorP*SkorP*Diamt*Dlina/9.8;
        Edit7.Text := floattostr(Rein);
        Edit8.Text := floattostr(HkD);
        Edit9.Text := floattostr(Fsi);
        Edit10.Text := floattostr(Fkgs);
        Button1.Caption := 'OK';
    end
    else
    begin
        Edit7.Text  := 'Ошибка ввода';
        Edit8.Text  := 'Ошибка ввода';
        Edit9.Text  := 'Ошибка ввода';
        Edit10.Text := 'Ошибка ввода';
        Button1.Caption := 'Попробуй ещё разок...';
    end;


end;


// Нажатие на кнопку "Умолч. (вода)"
procedure TForm2.Button2Click(Sender: TObject);
begin
    Edit1.Text := '1000';
    Edit2.Text := '0,0000018';
    Edit3.Text := '7';
    Edit4.Text := '0,084';
    Edit5.Text := '0,058';
    Edit6.Text := '3,5';
    Button1.Caption := 'Рассчитать';
end;

end.
 