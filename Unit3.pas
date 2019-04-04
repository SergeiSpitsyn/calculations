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
  a7, a8, a15, a17: Real; // ���������� ��� ����� ������� ����� ������

  b4, b9, b10, b11, b12,
  b13, b16, b18, b19, b20: Real; // ���������� ��� ����� �����������



implementation

{$R *.dfm}

// ����� ��� �������� ����� ����������� �������:
procedure TForm3.FormCreate(Sender: TObject);
    // ���������� �������:
    begin

        // ������ �������
        StringGrid1.Cells[0,0] := '��������';
        StringGrid1.Cells[0,1] := '���������� ����������, ���';
        StringGrid1.Cells[0,2] := '�������� �������, ��';
        StringGrid1.Cells[0,3] := '������� ���������, ��';
        StringGrid1.Cells[0,4] := '������� �������, ��';
        StringGrid1.Cells[0,5] := '��� �������, ��';
        StringGrid1.Cells[0,6] := '����� ������ �������';
        StringGrid1.Cells[0,7] := '����� ������ ������� � ������ ����';
        StringGrid1.Cells[0,8] := '����������� �������� �����';
        StringGrid1.Cells[0,9] := '������ ����� �������, ��';
        StringGrid1.Cells[0,10] := '����� ��������� ������ �������, ��';
        StringGrid1.Cells[0,11] := '������������ ������ �� ���������, ��';
        StringGrid1.Cells[0,12] := '������������ ������ �� ���������, ��';
        StringGrid1.Cells[0,13] := '���� ��� ����. ���������� (�� <tau>), ���';
        StringGrid1.Cells[0,14] := '----------------------------------------------------------------------';
        StringGrid1.Cells[0,15] := '��������� ������� ������, ��';
        StringGrid1.Cells[0,16] := '����� ������� ��� ��������� ������, ��';
        StringGrid1.Cells[0,17] := '������� ���, ��';
        StringGrid1.Cells[0,18] := '����� ������� ��� ������� ����, ��';
        StringGrid1.Cells[0,19] := '���� ��� ��������� ������, ���';
        StringGrid1.Cells[0,20] := '���� ��� ������� ����, ���';

        // ������ �������
        StringGrid1.Cells[1,0] := '�����.';
        StringGrid1.Cells[1,1] := '<tau>';
        StringGrid1.Cells[1,2] := 'D�';
        StringGrid1.Cells[1,3] := 'd';
        StringGrid1.Cells[1,4] := 'D��';
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

        // ������ �������
        StringGrid1.Cells[2,0] := '�����.� PRO';
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

        // �������� �������
        StringGrid1.Cells[3,0] := '������';
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

        // �������
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

        // ����� �������
        StringGrid1.Cells[4,0] := '����������';
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

// ��������� ��������� ��������� ������������� ����������� ������,
// "�������" ��� ���������. �����, ����� ����� ����� �� ����� ������
// ������ ����� ����� ������, ������� ������������� ���������������:
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
    // �������������� �������� �������:
    for ACol:=0 to 4 do
    begin
        for ARow:=0 to 20 do
        begin
//----------------------------------------------
        // �������
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

        // ����� ������� (� ������������)
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
// �������
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

        // ����� ������� (� ������������)
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




// ������ ������� �������� ������ (###�� �� ����� ��������!###)
procedure TForm3.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
    #8, '0'..'9' :  ;     // ����� � <BackSpace>
    '.',','      :        // ����������� ����� � ������� ������ �����
              begin
                  if Key <> DecimalSeparator then
                  Key := DecimalSeparator; // �������� ����������� �� ����������
//                  if Pos(DecimalSeparator, StringGrid1.Text) <> 0 then
//                  Key := Chr(0); // ������ ����� ������� �����������
              end;
//             '-' :   ; // ����� ��������� ������� ������ ������ ��������,
                      // �.�. ����� ������ ������
//             if Length(StringGrid.text) <> 0 then
//             Key := Chr(0);
    else
    key := Chr(0);    // ��������� ������� ���������

end;

end;
end.
