unit POOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UOOP;

type

SymbolSet = set of AnsiChar; 
  TForm1 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label1: TLabel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Edit1: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    //procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure  OutPutResult(r: TConvertPtoDec);
     //�����  ���������� ������������� � - ������ �����
    //-------------------------------------------------
    procedure CheckInputFormat;
    //�������� ������� �����
    //-------------------------------------------------
    procedure Input(Npp:string);
    //���� �-������ �����
    //-------------------------------------------------
    constructor Create(p: integer);
    procedure Button2Click(Sender: TObject);

     private
    { Private declarations }
    p: integer;//��������� ������� ���������
    Np:String;//AnsiString ;//�������� �-����� �����
    mistake: integer;//����� ��������� ������� � �-����� �����
     End;
var
    Form1: TForm1;
    FirstS: SymbolSet;// =['0'..'9','A'..'F','a'..'f','-','+'];
    Another: SymbolSet;// =['0'..'9','A'..'F','a'..'f',','];
    fater:integer=10; 

implementation
{$R *.dfm}
constructor TForm1.Create(p: integer);
begin
  self.p:=p;
  mistake:= 0;
end;procedure TForm1.Input(Npp:string);
//���� �-������ �����
begin
 Np:=Npp ;
end;

//-----------------------------------------------------
procedure TForm1.Button2Click(Sender: TObject);
var
  c: TForm1;
  f: TConvertPtoDec;//.TConvertPtoDec;
begin
c:= Create(fater);//������ ������ ������ TInOut
end;

procedure TForm1.CheckInputFormat;
//�������� ������� ����� �� ������� ������������ ��������
var
  i: integer;
begin
   
  
  if (fater = 2) then FirstS:=['0'..'1']; Another:=['0'..'1']; 
  if (fater = 4) then FirstS:=['0'..'3'];Another:=['0'..'3'];
  if (fater = 6) then FirstS:=['0'..'5']; Another:=['0'..'5']; 
  if (fater = 8) then FirstS:=['0'..'7']; Another:=['0'..'7']; 
  if (fater = 10) then FirstS:=['0'..'9'];Another:=['0'..'9'];
  if (fater = 16) then FirstS:=['0'..'9','A'..'F','a'..'f','-','+']; Another:=['0'..'9','A'..'F','a'..'f',','];
  for i:= 1 to Length(Np) do 
    begin
    if (i = 1) and not (Np[1] in FirstS) then begin mistake:= 1; exit; end;
    if (i <> 1) and not (Np[i] in Another) then begin mistake:= i; exit; end;
  end;
end;
    {P
procedure TForm1.Button1Click(Sender: TObject);
var
  c: TForm1;
  f: TConvertPtoDec;
//-----------------------------------------------------
begin
  if(edit1.Text = '') then Exit;
  c:= Create(fater);//������ ������ ������ TInOut
  f:= TConvertPtoDec.Create; //������ ������ ������ //TConvertPtoDec
  c.Input(Edit1.text);//������ �-����� ����� � ������
  c.CheckInputFormat;//��������� �������� ������ �� //������������ �������
  c.OutPutResult(f);//����������� �-����� � �������� //������ � ������� //���������    
  end;   }
procedure TForm1.OutPutResult;
var
i:double;
//�����  ���������� ������������� � - ������ �����
begin   if  (mistake = 0)
then begin       
i:=r.Convert(Np,p);
Label5.Caption:= FloatToStr(i);
end
else  
Label5.Caption:= '������ �����: ������� '+ IntToStr(mistake)+ ' ';
end;
procedure TForm1.RadioButton1Click(Sender: TObject);
begin
fater:=2;   
end;    
procedure TForm1.RadioButton2Click(Sender: TObject);
begin
fater:=4;
end; 
procedure TForm1.RadioButton3Click(Sender: TObject);
begin
fater:=6;
end;  
procedure TForm1.RadioButton4Click(Sender: TObject);
begin
fater:=8
end; 
procedure TForm1.RadioButton5Click(Sender: TObject);
begin
fater:=10;
end;     
procedure TForm1.RadioButton6Click(Sender: TObject);
begin
fater:=16;
end;
end.







