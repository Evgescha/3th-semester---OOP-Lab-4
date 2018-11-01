unit UOOP;

//-----------------------------------------------------
interface

type
//-----------------------------------------------------
  TConvertPtoDec = class
    function Convert(Np: String;p: integer):real;
    //������������ ����������
    private
    //-------------------------------------------------
    function PCharToInt(d: Char):integer;
    //��������� ������, ������������ ����� � �
    //�������� ������������� � ���������������� � //���������� �� 2 �� 16
    //-------------------------------------------------
    function PStrToInt(r: String; b:integer):integer;
    //������� ������ - ������ r � � ��������
    //������������� � �. ��. � ���������� b
    //-------------------------------------------------
    function PStrToFrac(f: String; b:integer): Real;
    //������� ����� - ������ f � � ��������
    //������������� � �. ��. � ���������� b
 end;
//-----------------------------------------------------
implementation
//-----------------------------------------------------
function TConvertPtoDec.PCharToInt(d: Char):integer;
//��������� ������, ������������ �����, � � ��������
//������������� � �������� �������� � ���������� �� 2 //�� 16
begin
  result:= 0;
  case d of
    '0'..'9': Result:= Ord(d)- Ord('0');
    'A'..'F': Result:= Ord(d)- Ord('A') + 10;
    'a'..'f': Result:= Ord(d)- Ord('a') + 10;
  end;
end;
//-----------------------------------------------------
function TConvertPtoDec.PStrToInt(r: String; b:integer):integer;
//������� �����  ������ s � � ��������
//������������� � �. ��. � ���������� b
var n: integer; w: integer;
begin
  result:= 0;
  n:= Length(r);
  w:= 1;
  while n <> 0 do begin
    Result:= Result + PCharToInt(r[n])*w;
    w:= w*b;
    Delete(r,n,1);
    n:= Length(r);
 end;
end;
//-----------------------------------------------------
function TConvertPtoDec.PStrToFrac(f: String; b:integer): Real;
//������� ����� ������ f � � ��������
//������������� � �. ��. � ���������� b
var n: integer; w : Real;
begin
  result:= 0;
  n:= Length(f);
  w:= 1/b;
  while n <> 0 do begin
    Result:=  Result + PCharToInt(f[1])*w;
    w:= w/b;
    Delete(f,1,1);
    n:= Length(f);
  end;
end;
//-----------------------------------------------------
function TConvertPtoDec.Convert(Np: String;p: integer):real;
//������������ ���������� p-��������� ������� ��������
var
  Ip: String;//���� ����� ��������� �-������ �����
  Fp: String;//������ ����� ��������� �-������ �����
  sign: integer;//���� �����
  z: integer;//������ ���������� � �-����� �����
begin
  Ip:='';//���� ����� ��������� �-������ �����
  Fp:='';//������ ����� ��������� �-������ �����
  sign:= 1;//���� �����
  if Np[1]='-'
    then begin sign:= -1; delete(Np,1,1) end
    else sign:= 1;
  z:= Pos(',',Np);
  if z <> 0
    then begin
      Ip:= Copy(Np,1,z - 1);
      Fp:= Copy(Np,z + 1,Length(Np) - z);
      result:= PStrToInt(Ip, p) + PStrToFrac(Fp, p)
    end
    else begin Ip:= Np; result:= PStrToInt(Ip, p); end;
  if sign < 0
    then result:= result*sign;
end;

end.

