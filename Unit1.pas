unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ExtCtrls, ComCtrls, ShellAPI;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    Label11: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit7: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Button2: TButton;
    Edit8: TEdit;
    Label17: TLabel;
    Edit9: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit10: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Edit11: TEdit;
    Label27: TLabel;
    Edit12: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Button3: TButton;
    Edit13: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Button4: TButton;
    Label39: TLabel;
    Edit16: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Edit17: TEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    Button5: TButton;
    Edit20: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Button6: TButton;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Edit28: TEdit;
    Label64: TLabel;
    Label65: TLabel;
    Button7: TButton;
    Label63: TLabel;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Button8: TButton;
    Label73: TLabel;
    Edit33: TEdit;
    Label74: TLabel;
    Edit34: TEdit;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Edit35: TEdit;
    Edit36: TEdit;
    Button9: TButton;
    Edit37: TEdit;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    GroupBox10: TGroupBox;
    Button10: TButton;
    ComboBox1: TComboBox;
    Label86: TLabel;
    ComboBox2: TComboBox;
    Label87: TLabel;
    Button11: TButton;
    GroupBox11: TGroupBox;
    Label78: TLabel;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
//    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a, b, c, d: Real; //переменные для считывания введённых вручную значений
  a4, a3, a2, a1, a0: integer; //переменные для подсчёта страниц
  g, h: real; //переменная для проведения расчётов
  rad, k0, k1, k2, k3, k4, k5, k6, k7: real;

const
  pi = 3.1415926535897932384626433832795;

implementation

uses Unit2, Unit3;

{$R *.dfm}



// 1. Описание GroupBox1 (кнопки верхнего левого окна)
procedure TForm1.Button1Click(Sender: TObject);
begin
  rad:=strtofloat(edit1.text)/1000;
  b := strtofloat(edit2.text);
  Label7.Visible := true;
  Label8.Visible := true;
  Label9.Visible := true;
  Label10.Visible := true;
  Label80.Visible := true;
  Edit3.Visible  := true;
  Edit4.Visible  := true;
  Button1.Caption := 'Молодец! :)';

  if (rad >= 0) and (b >= 0) then
  begin
      g := pi*rad*rad*100000*(b/10);
      h := pi*rad*rad;
      Edit3.Text := floattostr(g);
      Edit4.Text := floattostr(h);
  end
  else
  begin
      Edit3.Text := 'Ошибка ввода';
      Edit4.Text := 'Ошибка ввода';
      Button1.Caption := 'Попробуй ещё разок...';
  end;
  

end;

//procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
//begin
  // Key - символ, соответствующий нажатой клавише.
  // Если символ недопустимый, то процедура заменяет его
  // на символ с кодом 0. В результате этого символ в поле
  // редактирования не появляется и у пользователя создаётся
  // впечатление, что программа не реагирует на нажатие некоторых
  // клавиш.
//  case Key of
//    '0'..'9':                 ; // цифра
//    #8      :                 ; // клавиша <Backspace>
  //  #13     : Edit2.SetFocus  ; // клавиша <Enter>
    // Остальные символы - запрещены
//    else Key := Chr(0); // символ не отображать
//    end;
//  end;


// 2. Описание GroupBox2 (кнопки верхнего среднего окна)
Procedure TForm1.Button2Click(Sender: TObject);
begin
  a := strtofloat(edit5.text);
  b := strtofloat(edit6.text);
  c := strtofloat(edit7.text);
  Label17.Visible := true;
  Label18.Visible := true;
  Label19.Visible := true;
  Label20.Visible := true;
  Label81.Visible := true;
  Edit8.Visible  := true;
  Edit9.Visible  := true;
  Button2.Caption := 'Молодец! :)';

  if (a > 0) and (b >= 0) and (c >= 0) and (a > b) then
  begin
      g := (pi*(a/1000)*(a/1000)-pi*(b/1000)*(b/1000))*100000*(c/10);
      h := (pi*(a/1000)*(a/1000))-(pi*(b/1000)*(b/1000));
      Edit8.Text := floattostr(g);
      Edit9.Text := floattostr(h);
  end
  else
  begin
      Edit8.Text := 'Ошибка ввода';
      Edit9.Text := 'Ошибка ввода';
      Button2.Caption := 'Попробуй ещё разок...';
  end;
end;

// 3. Описание GroupBox3 (кнопки верхнего правого окна)
procedure TForm1.Button3Click(Sender: TObject);
begin
  a := strtofloat(edit10.text);
  b := strtofloat(edit11.text);
  c := strtofloat(edit12.text);
  Label31.Visible := true;
  Label32.Visible := true;
  Edit13.Visible  := true;
  Button3.Caption := 'Молодец! :)';

  if (a >= 0) and (b >= 0) and (c >= 0) then
  begin
      g := (pi*2*(a/1000)*(b/1000)*(b/1000))*100000*(c/10);
      Edit13.Text := floattostr(g);

  end
  else
  begin
      Edit13.Text := 'Ошибка ввода';
      Button3.Caption := 'Попробуй ещё разок...';
  end;

end;

// 4. Описание GroupBox4 (кнопки среднего левого окна)
procedure TForm1.Button4Click(Sender: TObject);
begin
  a := strtofloat(edit14.text);
  b := strtofloat(edit15.text);
  Label39.Visible := true;
  Label40.Visible := true;
  Label41.Visible := true;
  Edit16.Visible  := true;
  Button4.Caption := 'Молодец! :)';

  if (a >= 0) and (b >= 0) then
  begin
      g := a*b*pi/(360*60);
      Edit16.Text := floattostr(g);

  end
  else
  begin
      Edit16.Text := 'Ошибка ввода';
      Button4.Caption := 'Попробуй ещё разок...';
  end;
end;





// 5. Описание GroupBox5 (кнопки среднего среднего окна)
procedure TForm1.Button5Click(Sender: TObject);
begin
  a := strtofloat(edit17.text);
  b := strtofloat(edit18.text);
  c := strtofloat(edit19.text);
  Label48.Visible := true;
  Label49.Visible := true;
  Edit20.Visible  := true;
  Button5.Caption := 'Молодец! :)';

  if (a >= 0) and (b >= 0) and (c > 0) then
  begin
      g := a*0.0001*b*0.000001*c*1000;
      Edit20.Text := floattostr(g);

  end
  else
  begin
      Edit20.Text := 'Ошибка ввода';
      Button5.Caption := 'Попробуй ещё разок...';
  end;
end;



// 6. Описание GroupBox6 (кнопки среднего правого окна)
procedure TForm1.Button6Click(Sender: TObject);
begin
  a := strtofloat(edit21.text);
  b := strtofloat(edit22.text);
  c := strtofloat(edit23.text);
  Label56.Visible := true;
  Label57.Visible := true;
  Edit24.Visible  := true;
  Button6.Caption := 'Молодец! :)';

  if (a >= 0) and (b >= 0) and (c > 0) then
  begin
      g := pi*a*0.001*a*0.001/4*b*0.001*c;
      Edit24.Text := floattostr(g);

  end
  else
  begin
      Edit24.Text := 'Ошибка ввода';
      Button6.Caption := 'Попробуй ещё разок...';
  end;
end;



// 7. Описание GroupBox7 (кнопки нижнего левого окна)
procedure TForm1.Button7Click(Sender: TObject);
begin
  a := strtofloat(edit25.text);
  b := strtofloat(edit26.text);
  c := strtofloat(edit27.text);
  Label63.Visible := true;
  Label64.Visible := true;
  Label65.Visible := true;
  Edit28.Visible  := true;
  Button7.Caption := 'Молодец! :)';

  if (a > 0) and (b >= 0) and (c > 0) and (a > b) then
  begin
      g := ln(a/b)*60/sqrt(c);
      Edit28.Text := floattostr(g);

  end
  else
  begin
      Edit28.Text := 'Ошибка ввода';
      Button7.Caption := 'Попробуй ещё разок...';
  end;
end;


// 8. Описание GroupBox8 (кнопки нижнего среднего окна)
procedure TForm1.Button8Click(Sender: TObject);
begin
  a4 := strtoint(edit29.text);
  a3 := strtoint(edit30.text);
  a2 := strtoint(edit31.text);
  a1 := strtoint(edit32.text);
  a0 := strtoint(edit35.text);
  Label73.Visible := true;
  Label74.Visible := true;
  Label75.Visible := true;
  Label76.Visible := true;
  Edit33.Visible  := true;
  Edit34.Visible  := true;
  Button8.Caption := 'OK';

      g := a0+a1+a2+a3+a4;
      h := a4+a3*2+a2*4+a1*8+a0*16;
      Edit33.Text := floattostr(g);
      Edit34.Text := floattostr(h);

end;



// 9. Описание GroupBox9 (кнопки нижнего правого окна)
procedure TForm1.Button9Click(Sender: TObject);
begin

  a := strtofloat(edit36.text);
  Edit37.Visible  := true;

  if (a >= 0) then
  begin
    if (ComboBox1.ItemIndex <> -1) and (ComboBox2.ItemIndex <> -1) then
      begin
      case ComboBox1.ItemIndex of
          0:
          begin
             k0:=1;                       //      Паскаль
             k1:=0.001;                   //      Килопаскаль
             k2:=0.000001;                //      Мегапаскаль
             k3:=10000/98066.5;           //      Килограмм-сила/м^2
             k4:=1/98066.5;               //      Килограмм-сила/см^2
             k5:=1/9806650;               //      Килограмм-сила/мм^2
             k6:=0.00000986923266716013;  //      Атмосфера физическая
             k7:=0.00001;                 //      Бар
          end;

          1:
          begin
             k0:=1000;                    //      Паскаль
             k1:=1;                       //      Килопаскаль
             k2:=0.001;                   //      Мегапаскаль
             k3:=10000000/98066.5;        //      Килограмм-сила/м^2
             k4:=1000/98066.5;            //      Килограмм-сила/см^2
             k5:=10/98066.5;              //      Килограмм-сила/мм^2
             k6:=0.00986923266716013;     //      Атмосфера физическая
             k7:=0.01;                    //      Бар
          end;

          2:
          begin
             k0:=1000000;                 //      Паскаль
             k1:=1000;                    //      Килопаскаль
             k2:=1;                       //      Мегапаскаль
             k3:=1000000/9.80665;         //      Килограмм-сила/м^2
             k4:=1000000/98066.5;         //      Килограмм-сила/см^2
             k5:=10000/98066.5;           //      Килограмм-сила/мм^2
             k6:=9.86923266716013;        //      Атмосфера физическая
             k7:=10;                      //      Бар
          end;

          3:
          begin
             k0:=98066.5/10000;           //      Паскаль
             k1:=98066.5/1000000;         //      Килопаскаль
             k2:=98066.5/10000000000;     //      Мегапаскаль
             k3:=1;                       //      Килограмм-сила/м^2
             k4:=0.0001;                  //      Килограмм-сила/см^2
             k5:=0.000001;                //      Килограмм-сила/мм^2
             k6:=0.0000967841105354059;   //      Атмосфера физическая
             k7:=0.0000980665;            //      Бар
          end;

          4:
          begin
             k0:=98066.5;                 //      Паскаль
             k1:=98.0665;                 //      Килопаскаль
             k2:=0.0980665;               //      Мегапаскаль
             k3:=10000;                   //      Килограмм-сила/м^2
             k4:=1;                       //      Килограмм-сила/см^2
             k5:=0.01;                    //      Килограмм-сила/мм^2
             k6:=0.967841105354059;       //      Атмосфера физическая
             k7:=0.980665;                //      Бар
          end;

          5:
          begin
             k0:=9806650;                 //      Паскаль
             k1:=9806.65;                 //      Килопаскаль
             k2:=9.80665;                 //      Мегапаскаль
             k3:=1000000;                 //      Килограмм-сила/м^2
             k4:=100;                     //      Килограмм-сила/см^2
             k5:=1;                       //      Килограмм-сила/мм^2
             k6:=96.7841105354059;        //      Атмосфера физическая
             k7:=98.0665;                 //      Бар
          end;

          6:
          begin
             k0:=101325;                  //      Паскаль
             k1:=101.325;                 //      Килопаскаль
             k2:=0.101325;                //      Мегапаскаль
             k3:=10332.2745279989;        //      Килограмм-сила/м^2
             k4:=1.03322745279989;        //      Килограмм-сила/см^2
             k5:=0.0103322745279989;      //      Килограмм-сила/мм^2
             k6:=1;                       //      Атмосфера физическая
             k7:=1.01325;                 //      Бар
          end;

          7:
          begin
             k0:=100000;                  //      Паскаль
             k1:=100;                     //      Килопаскаль
             k2:=0.1;                     //      Мегапаскаль
             k3:=1000000000/98066.5;      //      Килограмм-сила/м^2
             k4:=100000/98066.5;          //      Килограмм-сила/см^2
             k5:=1000/98066.5;            //      Килограмм-сила/мм^2
             k6:=0.986923266716013;       //      Атмосфера физическая
             k7:=1;                       //      Бар
          end;
      end;

      case ComboBox2.ItemIndex of
          0: g:=k0*a;
          1: g:=k1*a;
          2: g:=k2*a;
          3: g:=k3*a;
          4: g:=k4*a;
          5: g:=k5*a;
          6: g:=k6*a;
          7: g:=k7*a;
      end;

      Edit37.Text := floattostr(g);
      Button9.Caption := 'ОК';
    end
    else
    begin
      Edit37.Text := 'Выбери размерности';
      Button9.Caption := 'Попробуй ещё разок...';
    end;
  end
  else
  begin
      Edit37.Text := 'Ошибка ввода';
      Button9.Caption := 'Попробуй ещё разок...';
  end;

end;



// Нажатие кнопки "Сила сопротивления жидкости"
procedure TForm1.Button10Click(Sender: TObject);
begin
  Form2.Show;
end;


// Нажатие кнопки "Сила сопротивления жидкости"
procedure TForm1.Button11Click(Sender: TObject);
begin
  Form3.Show;
end;

end.
