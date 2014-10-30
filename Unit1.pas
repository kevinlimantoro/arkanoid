unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Panel1: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    ScrollBar1: TScrollBar;
    ColorBox1: TColorBox;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x:integer=10;
  y:integer=10;
  a:array [1 .. 20] of Tshape;
  b:integer;
  i:integer;



implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 shape2.Top:=0;
 shape2.Left:=0;
timer1.enabled:=true;
timer1.Interval:=100;


for i:=1 to 20 do
begin
a[i]:=tshape.Create(form1);
randomize();
b:=random(5);
if b=0 then
begin
a[i].Shape:=strectangle;
a[i].Brush.color:=clred;
end
else if b=1 then
begin
a[i].shape:=stcircle;
a[i].Brush.Color:=clblue;
end
else if b=2 then
begin
a[i].shape:=stellipse;
a[i].Brush.Color:=clblack;
end
else if b=3 then
begin
a[i].shape:=stroundrect;
a[i].Brush.Color:=clgreen;
end
else if b=4 then
begin
a[i].shape:=stroundsquare;
a[i].Brush.Color:=clyellow;
end; b:=random(5);
a[i].left:=b*120;
b:=random(5);
a[i].top:=b*70;
a[i].Height:=25;
a[i].Width:=25;
a[i].Parent:=panel1;
end;
stringgrid1.Cells[0,0]:=a[1].Name;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if shape2.left+24>panel1.width then
x:=-10
else if shape2.left=0 then
x:=10;
if shape2.top>304 then
y:=-10
else if shape2.top=0 then
y:=10;

if (shape2.Top+24>=shape1.top)  and (shape2.left>=shape1.Left) and (shape2.left<=shape1.Left+89) then
y:=-10;

for i:=1 to 20 do
if (a[i].Visible) and (shape2.Left<=a[i].Left+25) and (shape2.Left>=a[i].Left-25) and (shape2.top>=a[i].Top-25) and (shape2.top<=a[i].Top+25) then
begin
shape2.Shape:=a[i].Shape;
shape2.Brush.Color:=a[i].Brush.Color;
if a[i].Brush.color=clblack then
stringgrid1.Cells[3,1]:='Hitam'
else if a[i].Brush.color=clyellow then
stringgrid1.Cells[3,1]:='Kuning'
else if a[i].Brush.color=clblue then
stringgrid1.Cells[3,1]:='Biru'
else if a[i].Brush.color=clred then
stringgrid1.Cells[3,1]:='Merah'
else if a[i].Brush.color=clgreen then
stringgrid1.Cells[3,1]:='Hijau';
a[i].hide;
if a[i].shape=stsquare then
stringgrid1.Cells[2,1]:='Square'
else if a[i].shape=stroundrect then
stringgrid1.Cells[2,1]:='Round Rectangle'
else if a[i].shape=stcircle then
stringgrid1.Cells[2,1]:='Circle'
else if a[i].shape=stroundsquare then
stringgrid1.Cells[2,1]:='Round square'
else if a[i].shape=stellipse then
stringgrid1.Cells[2,1]:='eclipse'
else if a[i].shape=strectangle then
stringgrid1.Cells[2,1]:='Rectangle';
end;

shape2.left:=shape2.Left+x;
shape2.top:=shape2.top+y;

stringgrid1.Cells[0,1]:=inttostr(shape2.left);
stringgrid1.Cells[1,1]:=inttostr(shape2.top);
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key ='a' then
shape1.Left:=shape1.left-10
else if key='d' then
shape1.Left:=shape1.left+10

end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
timer1.interval:=scrollbar1.position;
timer1.Enabled:=true;
stringgrid1.Cells[3,1]:=inttostr(scrollbar1.position);
end;

procedure TForm1.ColorBox1Change(Sender: TObject);
begin
shape1.Brush.Color:=colorbox1.Selected;
shape2.Brush.Color:=colorbox1.Selected;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
timer1.Enabled:=false;
end;

end.
