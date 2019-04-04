unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, jpeg, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Longint; var CanSelect: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a1, a2, a3, a5, a6,
  a7, a8, a15, a17: Real; // Переменные для ячеек столбца ввода данных

  b4, b9, b10, b11, b12,
  b13, b16, b18, b19, b20: Real; // Переменные для ячеек результатов



implementation

{$R *.dfm}

// Сразу при создании формы заполняется таблица:
procedure TForm3.FormCreate(Sender: TObject);
    // Заполнение таблицы:
    begin

        // первый столбец
        StringGrid1.Cells[0,0] := 'Параметр';
        StringGrid1.Cells[0,1] := 'Допустимое напряжение, МПа';
        StringGrid1.Cells[0,2] := 'Наружный диаметр, мм';
        StringGrid1.Cells[0,3] := 'Диаметр проволоки, мм';
        StringGrid1.Cells[0,4] := 'Средний диаметр, мм';
        StringGrid1.Cells[0,5] := 'Шаг навивки, мм';
        StringGrid1.Cells[0,6] := 'Число витков рабочее';
        StringGrid1.Cells[0,7] := 'Число витков опорных с одного края';
        StringGrid1.Cells[0,8] := 'Коэффициент подрезки торца';
        StringGrid1.Cells[0,9] := 'Полная длина пружины, мм';
        StringGrid1.Cells[0,10] := 'Длина полностью сжатой пружины, мм';
        StringGrid1.Cells[0,11] := 'Максимальная осадка по геометрии, мм';
        StringGrid1.Cells[0,12] := 'Максимальная осадка по прочности, мм';
        StringGrid1.Cells[0,13] := 'Сила при макс. деформации (по <tau>), кгс';
        StringGrid1.Cells[0,14] := '----------------------------------------------------------------------';
        StringGrid1.Cells[0,15] := 'Начальная рабочая осадка, мм';
        StringGrid1.Cells[0,16] := 'Длина пружины при начальной осадке, мм';
        StringGrid1.Cells[0,17] := 'Рабочий ход, мм';
        StringGrid1.Cells[0,18] := 'Длина пружины при рабочем ходе, мм';
        StringGrid1.Cells[0,19] := 'Сила при начальной осадке, кгс';
        StringGrid1.Cells[0,20] := 'Сила при рабочем ходе, кгс';

        // второй столбец
        StringGrid1.Cells[1,0] := 'Обозн.';
        StringGrid1.Cells[1,1] := '<tau>';
        StringGrid1.Cells[1,2] := 'Dн';
        StringGrid1.Cells[1,3] := 'd';
        StringGrid1.Cells[1,4] := 'Dср';
        StringGrid1.Cells[1,5] := 't';
        StringGrid1.Cells[1,6] := '-';
        StringGrid1.Cells[1,7] := '-';
        StringGrid1.Cells[1,8] := '-';
        StringGrid1.Cells[1,9] := 'H';
        StringGrid1.Cells[1,10] := '-';
        StringGrid1.Cells[1,11] := 'hmax';
        StringGrid1.Cells[1,12] := '-';
        StringGrid1.Cells[1,13] := 'Pmax';
        StringGrid1.Cells[1,14] := '----------';
        StringGrid1.Cells[1,15] := 'h1';
        StringGrid1.Cells[1,16] := '-';
        StringGrid1.Cells[1,17] := 'h2-h1';
        StringGrid1.Cells[1,18] := '-';
        StringGrid1.Cells[1,19] := 'P1';
        StringGrid1.Cells[1,20] := 'P2';

        // третий столбец
        StringGrid1.Cells[2,0] := 'Обозн.в PRO';
        StringGrid1.Cells[2,1] := '';
        StringGrid1.Cells[2,2] := '';
        StringGrid1.Cells[2,3] := 'd (D8)';
        StringGrid1.Cells[2,4] := 'D3';
        StringGrid1.Cells[2,5] := 't';
        StringGrid1.Cells[2,6] := 'i';
        StringGrid1.Cells[2,7] := 'i1';
        StringGrid1.Cells[2,8] := 's';
        StringGrid1.Cells[2,9] := '-';
        StringGrid1.Cells[2,10] := '-';
        StringGrid1.Cells[2,11] := '-';
        StringGrid1.Cells[2,12] := '-';
        StringGrid1.Cells[2,13] := '-';
        StringGrid1.Cells[2,14] := '--------------------';
        StringGrid1.Cells[2,15] := '-';
        StringGrid1.Cells[2,16] := '-';
        StringGrid1.Cells[2,17] := '-';
        StringGrid1.Cells[2,18] := '-';
        StringGrid1.Cells[2,19] := '-';
        StringGrid1.Cells[2,20] := '-';

        // четвёртый столбец
        StringGrid1.Cells[3,0] := 'Задано';
        StringGrid1.Cells[3,1] := '1010';
        StringGrid1.Cells[3,2] := '12';
        StringGrid1.Cells[3,3] := '2';
        StringGrid1.Cells[3,5] := '4';
        StringGrid1.Cells[3,6] := '10';
        StringGrid1.Cells[3,7] := '1';
        StringGrid1.Cells[3,8] := '0,25';
        StringGrid1.Cells[3,14] := '------------------------';
        StringGrid1.Cells[3,15] := '8';
        StringGrid1.Cells[3,17] := '6';

        // расчёты
        a1  := strtofloat(StringGrid1.Cells[3,1]);
        a2  := strtofloat(StringGrid1.Cells[3,2]);
        a3  := strtofloat(StringGrid1.Cells[3,3]);
        a5  := strtofloat(StringGrid1.Cells[3,5]);
        a6  := strtofloat(StringGrid1.Cells[3,6]);
        a7  := strtofloat(StringGrid1.Cells[3,7]);
        a8  := strtofloat(StringGrid1.Cells[3,8]);
        a15 := strtofloat(StringGrid1.Cells[3,15]);
        a17 := strtofloat(StringGrid1.Cells[3,17]);

        b4  := a2 - a3;
        b9  := a5 * a6 + 2*(a7 - a8)*a3;
        b10 := a6 * a3 + 2*(a7 - a8)*a3;
        b11 := b9 - b10;
        b12 := 0.000392*(b4*b4*b4)*a6*a1/((a2+a3/2)*a3*9.81);
        b13 := 0.392*(a3*a3*a3)*a1/(a2+a3/2)/9.81;
        b16 := b9-a15;
        b18 := b9-a15-a17;
        b19 := b13*a15/b12;
        b20 := b13*(a15+a17)/b12;

        // пятый столбец
        StringGrid1.Cells[4,0] := 'Рассчитано';
        StringGrid1.Cells[4,4] := floattostr(b4);
        StringGrid1.Cells[4,9] := floattostr(b9);
        StringGrid1.Cells[4,10] := floattostr(b10);
        StringGrid1.Cells[4,11] := floattostr(b11);
        StringGrid1.Cells[4,12] := floattostr(b12);
        StringGrid1.Cells[4,13] := floattostr(b13);
        StringGrid1.Cells[4,14] := '------------------------';
        StringGrid1.Cells[4,16] := floattostr(b16);
        StringGrid1.Cells[4,18] := floattostr(b18);
        StringGrid1.Cells[4,19] := floattostr(b19);
        StringGrid1.Cells[4,20] := floattostr(b20);
    end;

// Следующая процедура позволяет редактировать определённые ячейки,
// "запирая" все остальные. Также, сразу после клика на любую другую
// ячейку после ввода данных, таблица автоматически пересчитывается:
procedure TForm3.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Longint; var CanSelect: Boolean);
begin
        if (ACol=3) then
        begin
            if (ARow=1) or (ARow=2) or (ARow=3) or (ARow=5) or (ARow=6) or
               (ARow=6) or (ARow=7) or (ARow=8) or
               (ARow=15)or (ARow=17) then
            begin
            StringGrid1.Options := StringGrid1.Options+[goEditing];
            end
            else
            StringGrid1.Options := StringGrid1.Options-[goEditing];
        end
        else
        begin
            StringGrid1.Options := StringGrid1.Options-[goEditing];
        end;
    // Автоматический пересчёт таблицы:
    for ACol:=0 to 4 do
    begin
        for ARow:=0 to 20 do
        begin
//----------------------------------------------
        // расчёты
        a1  := strtofloat(StringGrid1.Cells[3,1]);
        a2  := strtofloat(StringGrid1.Cells[3,2]);
        a3  := strtofloat(StringGrid1.Cells[3,3]);
        a5  := strtofloat(StringGrid1.Cells[3,5]);
        a6  := strtofloat(StringGrid1.Cells[3,6]);
        a7  := strtofloat(StringGrid1.Cells[3,7]);
        a8  := strtofloat(StringGrid1.Cells[3,8]);
        a15 := strtofloat(StringGrid1.Cells[3,15]);
        a17 := strtofloat(StringGrid1.Cells[3,17]);

        b4  := a2 - a3;
        b9  := a5 * a6 + 2*(a7 - a8)*a3;
        b10 := a6 * a3 + 2*(a7 - a8)*a3;
        b11 := b9 - b10;
        b12 := 0.000392*(b4*b4*b4)*a6*a1/((a2+a3/2)*a3*9.81);
        b13 := 0.392*(a3*a3*a3)*a1/(a2+a3/2)/9.81;
        b16 := b9-a15;
        b18 := b9-a15-a17;
        b19 := b13*a15/b12;
        b20 := b13*(a15+a17)/b12;

        // пятый столбец (с результатами)
        StringGrid1.Cells[4,4]  := floattostr(b4);
        StringGrid1.Cells[4,9]  := floattostr(b9);
        StringGrid1.Cells[4,10] := floattostr(b10);
        StringGrid1.Cells[4,11] := floattostr(b11);
        StringGrid1.Cells[4,12] := floattostr(b12);
        StringGrid1.Cells[4,13] := floattostr(b13);
        StringGrid1.Cells[4,16] := floattostr(b16);
        StringGrid1.Cells[4,18] := floattostr(b18);
        StringGrid1.Cells[4,19] := floattostr(b19);
        StringGrid1.Cells[4,20] := floattostr(b20);
//----------------------------------------------
        end;
    end;
end;


procedure TForm3.Button1Click(Sender: TObject);
begin
// расчёты
        a1  := strtofloat(StringGrid1.Cells[3,1]);
        a2  := strtofloat(StringGrid1.Cells[3,2]);
        a3  := strtofloat(StringGrid1.Cells[3,3]);
        a5  := strtofloat(StringGrid1.Cells[3,5]);
        a6  := strtofloat(StringGrid1.Cells[3,6]);
        a7  := strtofloat(StringGrid1.Cells[3,7]);
        a8  := strtofloat(StringGrid1.Cells[3,8]);
        a15 := strtofloat(StringGrid1.Cells[3,15]);
        a17 := strtofloat(StringGrid1.Cells[3,17]);

        b4  := a2 - a3;
        b9  := a5 * a6 + 2*(a7 - a8)*a3;
        b10 := a6 * a3 + 2*(a7 - a8)*a3;
        b11 := b9 - b10;
        b12 := 0.000392*(b4*b4*b4)*a6*a1/((a2+a3/2)*a3*9.81);
        b13 := 0.392*(a3*a3*a3)*a1/(a2+a3/2)/9.81;
        b16 := b9-a15;
        b18 := b9-a15-a17;
        b19 := b13*a15/b12;
        b20 := b13*(a15+a17)/b12;

        // пятый столбец (с результатами)
        StringGrid1.Cells[4,4]  := floattostr(b4);
        StringGrid1.Cells[4,9]  := floattostr(b9);
        StringGrid1.Cells[4,10] := floattostr(b10);
        StringGrid1.Cells[4,11] := floattostr(b11);
        StringGrid1.Cells[4,12] := floattostr(b12);
        StringGrid1.Cells[4,13] := floattostr(b13);
        StringGrid1.Cells[4,16] := floattostr(b16);
        StringGrid1.Cells[4,18] := floattostr(b18);
        StringGrid1.Cells[4,19] := floattostr(b19);
        StringGrid1.Cells[4,20] := floattostr(b20);
end;




// Запрет нажатия ненужных клавиш (###НЕ ДО КОНЦА ДОДЕЛАНО!###)
procedure TForm3.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
    #8, '0'..'9' :  ;     // Цифры и <BackSpace>
    '.',','      :        // Разделитель целой и дробной частей числа
              begin
                  if Key <> DecimalSeparator then
                  Key := DecimalSeparator; // Заменяем разделитель на допустимый
//                  if Pos(DecimalSeparator, StringGrid1.Text) <> 0 then
//                  Key := Chr(0); // Запрет ввода второго разделителя
              end;
//             '-' :   ; // Минус разрешено вводить только первым символом,
                      // т.е. когда ячейка пустая
//             if Length(StringGrid.text) <> 0 then
//             Key := Chr(0);
    else
    key := Chr(0);    // Остальные символы запрещены

end;

end;
end.
