unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Anzeige: TEdit;
    Otimes: TEdit;
    Xtimes: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);

  private

  public
     XO:Integer;
     B1:Integer;
     B2:Integer;
     B3:Integer;
     B4:Integer;
     B5:Integer;
     B6:Integer;
     B7:Integer;
     B8:Integer;
     B9:Integer;
     Xwon:Integer;
     Owon:Integer;
     Nwon:Integer;
     Xwontimes:Integer;
     Owontimes:Integer;
     DeleteContent:Integer;
     BlockingB1:Integer;
     BlockingB2:Integer;
     BlockingB3:Integer;
     BlockingB4:Integer;
     BlockingB5:Integer;
     BlockingB6:Integer;
     BlockingB7:Integer;
     BlockingB8:Integer;
     BlockingB9:Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
{XO Change}
If BlockingB1<1 Then begin
If XO=1 Then
  begin
    Form1.Button1.Caption:='X';
    B1:=1;
    BlockingB1:=1;
  end;
If XO=2 Then
  begin
    Form1.Button1.Caption:='O';
    B1:=4;
    BlockingB1:=1;
  end;
If XO=1 Then XO:=2 Else XO:=1;
end;
If XO>0 Then Form1.Anzeige.Text:='Go! Go! Go!';
{X has won!}
If Xwon<2 Then begin
If B1+B2+B3=3 Then Xwon:=1;
If B4+B5+B6=3 Then Xwon:=1;
If B7+B8+B9=3 Then Xwon:=1;
If B1+B4+B7=3 Then Xwon:=1;
If B2+B5+B8=3 Then Xwon:=1;
If B3+B6+B9=3 Then Xwon:=1;
If B1+B5+B9=3 Then Xwon:=1;
If B3+B5+B7=3 Then Xwon:=1;
If Xwon=1 Then Form1.Anzeige.Text:='X has won!';
end;
{O has won!}
If Owon<2 Then begin
If B1+B2+B3=12 Then Owon:=1;
If B4+B5+B6=12 Then Owon:=1;
If B7+B8+B9=12 Then Owon:=1;
If B1+B4+B7=12 Then Owon:=1;
If B2+B5+B8=12 Then Owon:=1;
If B3+B6+B9=12 Then Owon:=1;
If B1+B5+B9=12 Then Owon:=1;
If B3+B5+B7=12 Then Owon:=1;
If Owon=1 Then Form1.Anzeige.Text:='O has won!';
end;
{Nobody has won!}
If Nwon<2 Then begin
If B1+B2+B3+B4+B5+B6+B7+B8+B9=24 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If B1+B2+B3+B4+B5+B6+B7+B8+B9=21 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If Nwon=1 Then Form1.Anzeige.Text:='Nobody has won!';
end;
{Delete content}
If Xwon=2 Then
  begin
    DeleteContent:=1;
    Xwontimes:=Xwontimes+1;
    Xwon:=0;
    XO:=2;
  end;
If Xwon=1 Then Xwon:=2;
If Owon=2 Then
  begin
    DeleteContent:=1;
    Owontimes:=Owontimes+1;
    Owon:=0;
    XO:=1;
  end;
If Owon=1 Then Owon:=2;
If Nwon=2 Then
  begin
    DeleteContent:=1;
    Nwon:=0;
  end;
If Nwon=1 Then Nwon:=2;
If DeleteContent=1 Then
  begin
    Form1.Anzeige.Text:='Go! Go! Go!';
    Form1.Button1.Caption:='';
    Form1.Button2.Caption:='';
    Form1.Button3.Caption:='';
    Form1.Button4.Caption:='';
    Form1.Button5.Caption:='';
    Form1.Button6.Caption:='';
    Form1.Button7.Caption:='';
    Form1.Button8.Caption:='';
    Form1.Button9.Caption:='';
    BlockingB1:=0;
    BlockingB2:=0;
    BlockingB3:=0;
    BlockingB4:=0;
    BlockingB5:=0;
    BlockingB6:=0;
    BlockingB7:=0;
    BlockingB8:=0;
    BlockingB9:=0;
    B1:=0; B2:=0; B3:=0; B4:=0; B5:=0; B6:=0; B7:=0; B8:=0; B9:=0;
    DeleteContent:=0;
  end;
{Various}
Form1.Xtimes.Text:='X:'+IntToStr(Xwontimes);
Form1.Otimes.Text:='O:'+IntToStr(Owontimes);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
{XO Change}
If BlockingB2<1 Then begin
If XO=1 Then
  begin
    Form1.Button2.Caption:='X';
    B2:=1;
    BlockingB2:=1;
  end;
If XO=2 Then
  begin
    Form1.Button2.Caption:='O';
    B2:=4;
    BlockingB2:=1;
  end;
If XO=1 Then XO:=2 Else XO:=1;
end;
If XO>0 Then Form1.Anzeige.Text:='Go! Go! Go!';
{X has won!}
If Xwon<2 Then begin
If B1+B2+B3=3 Then Xwon:=1;
If B4+B5+B6=3 Then Xwon:=1;
If B7+B8+B9=3 Then Xwon:=1;
If B1+B4+B7=3 Then Xwon:=1;
If B2+B5+B8=3 Then Xwon:=1;
If B3+B6+B9=3 Then Xwon:=1;
If B1+B5+B9=3 Then Xwon:=1;
If B3+B5+B7=3 Then Xwon:=1;
If Xwon=1 Then Form1.Anzeige.Text:='X has won!';
end;
{O has won!}
If Owon<2 Then begin
If B1+B2+B3=12 Then Owon:=1;
If B4+B5+B6=12 Then Owon:=1;
If B7+B8+B9=12 Then Owon:=1;
If B1+B4+B7=12 Then Owon:=1;
If B2+B5+B8=12 Then Owon:=1;
If B3+B6+B9=12 Then Owon:=1;
If B1+B5+B9=12 Then Owon:=1;
If B3+B5+B7=12 Then Owon:=1;
If Owon=1 Then Form1.Anzeige.Text:='O has won!';
end;
{Nobody has won!}
If Nwon<2 Then begin
If B1+B2+B3+B4+B5+B6+B7+B8+B9=24 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If B1+B2+B3+B4+B5+B6+B7+B8+B9=21 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If Nwon=1 Then Form1.Anzeige.Text:='Nobody has won!';
end;
{Delete content}
If Xwon=2 Then
  begin
    DeleteContent:=1;
    Xwontimes:=Xwontimes+1;
    Xwon:=0;
    XO:=2;
  end;
If Xwon=1 Then Xwon:=2;
If Owon=2 Then
  begin
    DeleteContent:=1;
    Owontimes:=Owontimes+1;
    Owon:=0;
    XO:=1;
  end;
If Owon=1 Then Owon:=2;
If Nwon=2 Then
  begin
    DeleteContent:=1;
    Nwon:=0;
  end;
If Nwon=1 Then Nwon:=2;
If DeleteContent=1 Then
  begin
    Form1.Anzeige.Text:='Go! Go! Go!';
    Form1.Button1.Caption:='';
    Form1.Button2.Caption:='';
    Form1.Button3.Caption:='';
    Form1.Button4.Caption:='';
    Form1.Button5.Caption:='';
    Form1.Button6.Caption:='';
    Form1.Button7.Caption:='';
    Form1.Button8.Caption:='';
    Form1.Button9.Caption:='';
    BlockingB1:=0;
    BlockingB2:=0;
    BlockingB3:=0;
    BlockingB4:=0;
    BlockingB5:=0;
    BlockingB6:=0;
    BlockingB7:=0;
    BlockingB8:=0;
    BlockingB9:=0;
    B1:=0; B2:=0; B3:=0; B4:=0; B5:=0; B6:=0; B7:=0; B8:=0; B9:=0;
    DeleteContent:=0;
  end;
{Various}
Form1.Xtimes.Text:='X:'+IntToStr(Xwontimes);
Form1.Otimes.Text:='O:'+IntToStr(Owontimes);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
{XO Change}
If BlockingB3<1 Then begin
If XO=1 Then
  begin
    Form1.Button3.Caption:='X';
    B3:=1;
    BlockingB3:=1;
  end;
If XO=2 Then
  begin
    Form1.Button3.Caption:='O';
    B3:=4;
    BlockingB3:=1;
  end;
If XO=1 Then XO:=2 Else XO:=1;
end;
If XO>0 Then Form1.Anzeige.Text:='Go! Go! Go!';
{X has won!}
If Xwon<2 Then begin
If B1+B2+B3=3 Then Xwon:=1;
If B4+B5+B6=3 Then Xwon:=1;
If B7+B8+B9=3 Then Xwon:=1;
If B1+B4+B7=3 Then Xwon:=1;
If B2+B5+B8=3 Then Xwon:=1;
If B3+B6+B9=3 Then Xwon:=1;
If B1+B5+B9=3 Then Xwon:=1;
If B3+B5+B7=3 Then Xwon:=1;
If Xwon=1 Then Form1.Anzeige.Text:='X has won!';
end;
{O has won!}
If Owon<2 Then begin
If B1+B2+B3=12 Then Owon:=1;
If B4+B5+B6=12 Then Owon:=1;
If B7+B8+B9=12 Then Owon:=1;
If B1+B4+B7=12 Then Owon:=1;
If B2+B5+B8=12 Then Owon:=1;
If B3+B6+B9=12 Then Owon:=1;
If B1+B5+B9=12 Then Owon:=1;
If B3+B5+B7=12 Then Owon:=1;
If Owon=1 Then Form1.Anzeige.Text:='O has won!';
end;
{Nobody has won!}
If Nwon<2 Then begin
If B1+B2+B3+B4+B5+B6+B7+B8+B9=24 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If B1+B2+B3+B4+B5+B6+B7+B8+B9=21 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If Nwon=1 Then Form1.Anzeige.Text:='Nobody has won!';
end;
{Delete content}
If Xwon=2 Then
  begin
    DeleteContent:=1;
    Xwontimes:=Xwontimes+1;
    Xwon:=0;
    XO:=2;
  end;
If Xwon=1 Then Xwon:=2;
If Owon=2 Then
  begin
    DeleteContent:=1;
    Owontimes:=Owontimes+1;
    Owon:=0;
    XO:=1;
  end;
If Owon=1 Then Owon:=2;
If Nwon=2 Then
  begin
    DeleteContent:=1;
    Nwon:=0;
  end;
If Nwon=1 Then Nwon:=2;
If DeleteContent=1 Then
  begin
    Form1.Anzeige.Text:='Go! Go! Go!';
    Form1.Button1.Caption:='';
    Form1.Button2.Caption:='';
    Form1.Button3.Caption:='';
    Form1.Button4.Caption:='';
    Form1.Button5.Caption:='';
    Form1.Button6.Caption:='';
    Form1.Button7.Caption:='';
    Form1.Button8.Caption:='';
    Form1.Button9.Caption:='';
    BlockingB1:=0;
    BlockingB2:=0;
    BlockingB3:=0;
    BlockingB4:=0;
    BlockingB5:=0;
    BlockingB6:=0;
    BlockingB7:=0;
    BlockingB8:=0;
    BlockingB9:=0;
    B1:=0; B2:=0; B3:=0; B4:=0; B5:=0; B6:=0; B7:=0; B8:=0; B9:=0;
    DeleteContent:=0;
  end;
{Various}
Form1.Xtimes.Text:='X:'+IntToStr(Xwontimes);
Form1.Otimes.Text:='O:'+IntToStr(Owontimes);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
{XO Change}
If BlockingB4<1 Then begin
If XO=1 Then
  begin
    Form1.Button4.Caption:='X';
    B4:=1;
    BlockingB4:=1;
  end;
If XO=2 Then
  begin
    Form1.Button4.Caption:='O';
    B4:=4;
    BlockingB4:=1;
  end;
If XO=1 Then XO:=2 Else XO:=1;
end;
If XO>0 Then Form1.Anzeige.Text:='Go! Go! Go!';
{X has won!}
If Xwon<2 Then begin
If B1+B2+B3=3 Then Xwon:=1;
If B4+B5+B6=3 Then Xwon:=1;
If B7+B8+B9=3 Then Xwon:=1;
If B1+B4+B7=3 Then Xwon:=1;
If B2+B5+B8=3 Then Xwon:=1;
If B3+B6+B9=3 Then Xwon:=1;
If B1+B5+B9=3 Then Xwon:=1;
If B3+B5+B7=3 Then Xwon:=1;
If Xwon=1 Then Form1.Anzeige.Text:='X has won!';
end;
{O has won!}
If Owon<2 Then begin
If B1+B2+B3=12 Then Owon:=1;
If B4+B5+B6=12 Then Owon:=1;
If B7+B8+B9=12 Then Owon:=1;
If B1+B4+B7=12 Then Owon:=1;
If B2+B5+B8=12 Then Owon:=1;
If B3+B6+B9=12 Then Owon:=1;
If B1+B5+B9=12 Then Owon:=1;
If B3+B5+B7=12 Then Owon:=1;
If Owon=1 Then Form1.Anzeige.Text:='O has won!';
end;
{Nobody has won!}
If Nwon<2 Then begin
If B1+B2+B3+B4+B5+B6+B7+B8+B9=24 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If B1+B2+B3+B4+B5+B6+B7+B8+B9=21 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If Nwon=1 Then Form1.Anzeige.Text:='Nobody has won!';
end;
{Delete content}
If Xwon=2 Then
  begin
    DeleteContent:=1;
    Xwontimes:=Xwontimes+1;
    Xwon:=0;
    XO:=2;
  end;
If Xwon=1 Then Xwon:=2;
If Owon=2 Then
  begin
    DeleteContent:=1;
    Owontimes:=Owontimes+1;
    Owon:=0;
    XO:=1;
  end;
If Owon=1 Then Owon:=2;
If Nwon=2 Then
  begin
    DeleteContent:=1;
    Nwon:=0;
  end;
If Nwon=1 Then Nwon:=2;
If DeleteContent=1 Then
  begin
    Form1.Anzeige.Text:='Go! Go! Go!';
    Form1.Button1.Caption:='';
    Form1.Button2.Caption:='';
    Form1.Button3.Caption:='';
    Form1.Button4.Caption:='';
    Form1.Button5.Caption:='';
    Form1.Button6.Caption:='';
    Form1.Button7.Caption:='';
    Form1.Button8.Caption:='';
    Form1.Button9.Caption:='';
    BlockingB1:=0;
    BlockingB2:=0;
    BlockingB3:=0;
    BlockingB4:=0;
    BlockingB5:=0;
    BlockingB6:=0;
    BlockingB7:=0;
    BlockingB8:=0;
    BlockingB9:=0;
    B1:=0; B2:=0; B3:=0; B4:=0; B5:=0; B6:=0; B7:=0; B8:=0; B9:=0;
    DeleteContent:=0;
  end;
{Various}
Form1.Xtimes.Text:='X:'+IntToStr(Xwontimes);
Form1.Otimes.Text:='O:'+IntToStr(Owontimes);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
{XO Change}
If BlockingB5<1 Then begin
If XO=1 Then
  begin
    Form1.Button5.Caption:='X';
    B5:=1;
    BlockingB5:=1;
  end;
If XO=2 Then
  begin
    Form1.Button5.Caption:='O';
    B5:=4;
    BlockingB5:=1;
  end;
If XO=1 Then XO:=2 Else XO:=1;
end;
If XO>0 Then Form1.Anzeige.Text:='Go! Go! Go!';
{X has won!}
If Xwon<2 Then begin
If B1+B2+B3=3 Then Xwon:=1;
If B4+B5+B6=3 Then Xwon:=1;
If B7+B8+B9=3 Then Xwon:=1;
If B1+B4+B7=3 Then Xwon:=1;
If B2+B5+B8=3 Then Xwon:=1;
If B3+B6+B9=3 Then Xwon:=1;
If B1+B5+B9=3 Then Xwon:=1;
If B3+B5+B7=3 Then Xwon:=1;
If Xwon=1 Then Form1.Anzeige.Text:='X has won!';
end;
{O has won!}
If Owon<2 Then begin
If B1+B2+B3=12 Then Owon:=1;
If B4+B5+B6=12 Then Owon:=1;
If B7+B8+B9=12 Then Owon:=1;
If B1+B4+B7=12 Then Owon:=1;
If B2+B5+B8=12 Then Owon:=1;
If B3+B6+B9=12 Then Owon:=1;
If B1+B5+B9=12 Then Owon:=1;
If B3+B5+B7=12 Then Owon:=1;
If Owon=1 Then Form1.Anzeige.Text:='O has won!';
end;
{Nobody has won!}
If Nwon<2 Then begin
If B1+B2+B3+B4+B5+B6+B7+B8+B9=24 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If B1+B2+B3+B4+B5+B6+B7+B8+B9=21 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If Nwon=1 Then Form1.Anzeige.Text:='Nobody has won!';
end;
{Delete content}
If Xwon=2 Then
  begin
    DeleteContent:=1;
    Xwontimes:=Xwontimes+1;
    Xwon:=0;
    XO:=2;
  end;
If Xwon=1 Then Xwon:=2;
If Owon=2 Then
  begin
    DeleteContent:=1;
    Owontimes:=Owontimes+1;
    Owon:=0;
    XO:=1;
  end;
If Owon=1 Then Owon:=2;
If Nwon=2 Then
  begin
    DeleteContent:=1;
    Nwon:=0;
  end;
If Nwon=1 Then Nwon:=2;
If DeleteContent=1 Then
  begin
    Form1.Anzeige.Text:='Go! Go! Go!';
    Form1.Button1.Caption:='';
    Form1.Button2.Caption:='';
    Form1.Button3.Caption:='';
    Form1.Button4.Caption:='';
    Form1.Button5.Caption:='';
    Form1.Button6.Caption:='';
    Form1.Button7.Caption:='';
    Form1.Button8.Caption:='';
    Form1.Button9.Caption:='';
    BlockingB1:=0;
    BlockingB2:=0;
    BlockingB3:=0;
    BlockingB4:=0;
    BlockingB5:=0;
    BlockingB6:=0;
    BlockingB7:=0;
    BlockingB8:=0;
    BlockingB9:=0;
    B1:=0; B2:=0; B3:=0; B4:=0; B5:=0; B6:=0; B7:=0; B8:=0; B9:=0;
    DeleteContent:=0;
  end;
{Various}
Form1.Xtimes.Text:='X:'+IntToStr(Xwontimes);
Form1.Otimes.Text:='O:'+IntToStr(Owontimes);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
{XO Change}
If BlockingB6<1 Then begin
If XO=1 Then
  begin
    Form1.Button6.Caption:='X';
    B6:=1;
    BlockingB6:=1;
  end;
If XO=2 Then
  begin
    Form1.Button6.Caption:='O';
    B6:=4;
    BlockingB6:=1;
  end;
If XO=1 Then XO:=2 Else XO:=1;
end;
If XO>0 Then Form1.Anzeige.Text:='Go! Go! Go!';
{X has won!}
If Xwon<2 Then begin
If B1+B2+B3=3 Then Xwon:=1;
If B4+B5+B6=3 Then Xwon:=1;
If B7+B8+B9=3 Then Xwon:=1;
If B1+B4+B7=3 Then Xwon:=1;
If B2+B5+B8=3 Then Xwon:=1;
If B3+B6+B9=3 Then Xwon:=1;
If B1+B5+B9=3 Then Xwon:=1;
If B3+B5+B7=3 Then Xwon:=1;
If Xwon=1 Then Form1.Anzeige.Text:='X has won!';
end;
{O has won!}
If Owon<2 Then begin
If B1+B2+B3=12 Then Owon:=1;
If B4+B5+B6=12 Then Owon:=1;
If B7+B8+B9=12 Then Owon:=1;
If B1+B4+B7=12 Then Owon:=1;
If B2+B5+B8=12 Then Owon:=1;
If B3+B6+B9=12 Then Owon:=1;
If B1+B5+B9=12 Then Owon:=1;
If B3+B5+B7=12 Then Owon:=1;
If Owon=1 Then Form1.Anzeige.Text:='O has won!';
end;
{Nobody has won!}
If Nwon<2 Then begin
If B1+B2+B3+B4+B5+B6+B7+B8+B9=24 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If B1+B2+B3+B4+B5+B6+B7+B8+B9=21 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If Nwon=1 Then Form1.Anzeige.Text:='Nobody has won!';
end;
{Delete content}
If Xwon=2 Then
  begin
    DeleteContent:=1;
    Xwontimes:=Xwontimes+1;
    Xwon:=0;
    XO:=2;
  end;
If Xwon=1 Then Xwon:=2;
If Owon=2 Then
  begin
    DeleteContent:=1;
    Owontimes:=Owontimes+1;
    Owon:=0;
    XO:=1;
  end;
If Owon=1 Then Owon:=2;
If Nwon=2 Then
  begin
    DeleteContent:=1;
    Nwon:=0;
  end;
If Nwon=1 Then Nwon:=2;
If DeleteContent=1 Then
  begin
    Form1.Anzeige.Text:='Go! Go! Go!';
    Form1.Button1.Caption:='';
    Form1.Button2.Caption:='';
    Form1.Button3.Caption:='';
    Form1.Button4.Caption:='';
    Form1.Button5.Caption:='';
    Form1.Button6.Caption:='';
    Form1.Button7.Caption:='';
    Form1.Button8.Caption:='';
    Form1.Button9.Caption:='';
    BlockingB1:=0;
    BlockingB2:=0;
    BlockingB3:=0;
    BlockingB4:=0;
    BlockingB5:=0;
    BlockingB6:=0;
    BlockingB7:=0;
    BlockingB8:=0;
    BlockingB9:=0;
    B1:=0; B2:=0; B3:=0; B4:=0; B5:=0; B6:=0; B7:=0; B8:=0; B9:=0;
    DeleteContent:=0;
  end;
{Various}
Form1.Xtimes.Text:='X:'+IntToStr(Xwontimes);
Form1.Otimes.Text:='O:'+IntToStr(Owontimes);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
{XO Change}
If BlockingB7<1 Then begin
If XO=1 Then
  begin
    Form1.Button7.Caption:='X';
    B7:=1;
    BlockingB7:=1;
  end;
If XO=2 Then
  begin
    Form1.Button7.Caption:='O';
    B7:=4;
    BlockingB7:=1;
  end;
If XO=1 Then XO:=2 Else XO:=1;
end;
If XO>0 Then Form1.Anzeige.Text:='Go! Go! Go!';
{X has won!}
If Xwon<2 Then begin
If B1+B2+B3=3 Then Xwon:=1;
If B4+B5+B6=3 Then Xwon:=1;
If B7+B8+B9=3 Then Xwon:=1;
If B1+B4+B7=3 Then Xwon:=1;
If B2+B5+B8=3 Then Xwon:=1;
If B3+B6+B9=3 Then Xwon:=1;
If B1+B5+B9=3 Then Xwon:=1;
If B3+B5+B7=3 Then Xwon:=1;
If Xwon=1 Then Form1.Anzeige.Text:='X has won!';
end;
{O has won!}
If Owon<2 Then begin
If B1+B2+B3=12 Then Owon:=1;
If B4+B5+B6=12 Then Owon:=1;
If B7+B8+B9=12 Then Owon:=1;
If B1+B4+B7=12 Then Owon:=1;
If B2+B5+B8=12 Then Owon:=1;
If B3+B6+B9=12 Then Owon:=1;
If B1+B5+B9=12 Then Owon:=1;
If B3+B5+B7=12 Then Owon:=1;
If Owon=1 Then Form1.Anzeige.Text:='O has won!';
end;
{Nobody has won!}
If Nwon<2 Then begin
If B1+B2+B3+B4+B5+B6+B7+B8+B9=24 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If B1+B2+B3+B4+B5+B6+B7+B8+B9=21 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If Nwon=1 Then Form1.Anzeige.Text:='Nobody has won!';
end;
{Delete content}
If Xwon=2 Then
  begin
    DeleteContent:=1;
    Xwontimes:=Xwontimes+1;
    Xwon:=0;
    XO:=2;
  end;
If Xwon=1 Then Xwon:=2;
If Owon=2 Then
  begin
    DeleteContent:=1;
    Owontimes:=Owontimes+1;
    Owon:=0;
    XO:=1;
  end;
If Owon=1 Then Owon:=2;
If Nwon=2 Then
  begin
    DeleteContent:=1;
    Nwon:=0;
  end;
If Nwon=1 Then Nwon:=2;
If DeleteContent=1 Then
  begin
    Form1.Anzeige.Text:='Go! Go! Go!';
    Form1.Button1.Caption:='';
    Form1.Button2.Caption:='';
    Form1.Button3.Caption:='';
    Form1.Button4.Caption:='';
    Form1.Button5.Caption:='';
    Form1.Button6.Caption:='';
    Form1.Button7.Caption:='';
    Form1.Button8.Caption:='';
    Form1.Button9.Caption:='';
    BlockingB1:=0;
    BlockingB2:=0;
    BlockingB3:=0;
    BlockingB4:=0;
    BlockingB5:=0;
    BlockingB6:=0;
    BlockingB7:=0;
    BlockingB8:=0;
    BlockingB9:=0;
    B1:=0; B2:=0; B3:=0; B4:=0; B5:=0; B6:=0; B7:=0; B8:=0; B9:=0;
    DeleteContent:=0;
  end;
{Various}
Form1.Xtimes.Text:='X:'+IntToStr(Xwontimes);
Form1.Otimes.Text:='O:'+IntToStr(Owontimes);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
{XO Change}
If BlockingB8<1 Then begin
If XO=1 Then
  begin
    Form1.Button8.Caption:='X';
    B8:=1;
    BlockingB8:=1;
  end;
If XO=2 Then
  begin
    Form1.Button8.Caption:='O';
    B8:=4;
    BlockingB8:=1;
  end;
If XO=1 Then XO:=2 Else XO:=1;
end;
If XO>0 Then Form1.Anzeige.Text:='Go! Go! Go!';
{X has won!}
If Xwon<2 Then begin
If B1+B2+B3=3 Then Xwon:=1;
If B4+B5+B6=3 Then Xwon:=1;
If B7+B8+B9=3 Then Xwon:=1;
If B1+B4+B7=3 Then Xwon:=1;
If B2+B5+B8=3 Then Xwon:=1;
If B3+B6+B9=3 Then Xwon:=1;
If B1+B5+B9=3 Then Xwon:=1;
If B3+B5+B7=3 Then Xwon:=1;
If Xwon=1 Then Form1.Anzeige.Text:='X has won!';
end;
{O has won!}
If Owon<2 Then begin
If B1+B2+B3=12 Then Owon:=1;
If B4+B5+B6=12 Then Owon:=1;
If B7+B8+B9=12 Then Owon:=1;
If B1+B4+B7=12 Then Owon:=1;
If B2+B5+B8=12 Then Owon:=1;
If B3+B6+B9=12 Then Owon:=1;
If B1+B5+B9=12 Then Owon:=1;
If B3+B5+B7=12 Then Owon:=1;
If Owon=1 Then Form1.Anzeige.Text:='O has won!';
end;
{Nobody has won!}
If Nwon<2 Then begin
If B1+B2+B3+B4+B5+B6+B7+B8+B9=24 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If B1+B2+B3+B4+B5+B6+B7+B8+B9=21 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If Nwon=1 Then Form1.Anzeige.Text:='Nobody has won!';
end;
{Delete content}
If Xwon=2 Then
  begin
    DeleteContent:=1;
    Xwontimes:=Xwontimes+1;
    Xwon:=0;
    XO:=2;
  end;
If Xwon=1 Then Xwon:=2;
If Owon=2 Then
  begin
    DeleteContent:=1;
    Owontimes:=Owontimes+1;
    Owon:=0;
    XO:=1;
  end;
If Owon=1 Then Owon:=2;
If Nwon=2 Then
  begin
    DeleteContent:=1;
    Nwon:=0;
  end;
If Nwon=1 Then Nwon:=2;
If DeleteContent=1 Then
  begin
    Form1.Anzeige.Text:='Go! Go! Go!';
    Form1.Button1.Caption:='';
    Form1.Button2.Caption:='';
    Form1.Button3.Caption:='';
    Form1.Button4.Caption:='';
    Form1.Button5.Caption:='';
    Form1.Button6.Caption:='';
    Form1.Button7.Caption:='';
    Form1.Button8.Caption:='';
    Form1.Button9.Caption:='';
    BlockingB1:=0;
    BlockingB2:=0;
    BlockingB3:=0;
    BlockingB4:=0;
    BlockingB5:=0;
    BlockingB6:=0;
    BlockingB7:=0;
    BlockingB8:=0;
    BlockingB9:=0;
    B1:=0; B2:=0; B3:=0; B4:=0; B5:=0; B6:=0; B7:=0; B8:=0; B9:=0;
    DeleteContent:=0;
  end;
{Various}
Form1.Xtimes.Text:='X:'+IntToStr(Xwontimes);
Form1.Otimes.Text:='O:'+IntToStr(Owontimes);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
{XO Change}
If BlockingB9<1 Then begin
If XO=1 Then
  begin
    Form1.Button9.Caption:='X';
    B9:=1;
    BlockingB9:=1
  end;
If XO=2 Then
  begin
    Form1.Button9.Caption:='O';
    B9:=4;
    BlockingB9:=1
  end;
If XO=1 Then XO:=2 Else XO:=1;
end;
If XO>0 Then Form1.Anzeige.Text:='Go! Go! Go!';
{X has won!}
If Xwon<2 Then begin
If B1+B2+B3=3 Then Xwon:=1;
If B4+B5+B6=3 Then Xwon:=1;
If B7+B8+B9=3 Then Xwon:=1;
If B1+B4+B7=3 Then Xwon:=1;
If B2+B5+B8=3 Then Xwon:=1;
If B3+B6+B9=3 Then Xwon:=1;
If B1+B5+B9=3 Then Xwon:=1;
If B3+B5+B7=3 Then Xwon:=1;
If Xwon=1 Then Form1.Anzeige.Text:='X has won!';
end;
{O has won!}
If Owon<2 Then begin
If B1+B2+B3=12 Then Owon:=1;
If B4+B5+B6=12 Then Owon:=1;
If B7+B8+B9=12 Then Owon:=1;
If B1+B4+B7=12 Then Owon:=1;
If B2+B5+B8=12 Then Owon:=1;
If B3+B6+B9=12 Then Owon:=1;
If B1+B5+B9=12 Then Owon:=1;
If B3+B5+B7=12 Then Owon:=1;
If Owon=1 Then Form1.Anzeige.Text:='O has won!';
end;
{Nobody has won!}
If Nwon<2 Then begin
If B1+B2+B3+B4+B5+B6+B7+B8+B9=24 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If B1+B2+B3+B4+B5+B6+B7+B8+B9=21 Then
  begin If Xwon=0 Then
    begin If Owon=0 Then Nwon:=1;
      end; end;
If Nwon=1 Then Form1.Anzeige.Text:='Nobody has won!';
end;
{Delete content}
If Xwon=2 Then
  begin
    DeleteContent:=1;
    Xwontimes:=Xwontimes+1;
    Xwon:=0;
    XO:=2;
  end;
If Xwon=1 Then Xwon:=2;
If Owon=2 Then
  begin
    DeleteContent:=1;
    Owontimes:=Owontimes+1;
    Owon:=0;
    XO:=1;
  end;
If Owon=1 Then Owon:=2;
If Nwon=2 Then
  begin
    DeleteContent:=1;
    Nwon:=0;
  end;
If Nwon=1 Then Nwon:=2;
If DeleteContent=1 Then
  begin
    Form1.Anzeige.Text:='Go! Go! Go!';
    Form1.Button1.Caption:='';
    Form1.Button2.Caption:='';
    Form1.Button3.Caption:='';
    Form1.Button4.Caption:='';
    Form1.Button5.Caption:='';
    Form1.Button6.Caption:='';
    Form1.Button7.Caption:='';
    Form1.Button8.Caption:='';
    Form1.Button9.Caption:='';
    BlockingB1:=0;
    BlockingB2:=0;
    BlockingB3:=0;
    BlockingB4:=0;
    BlockingB5:=0;
    BlockingB6:=0;
    BlockingB7:=0;
    BlockingB8:=0;
    BlockingB9:=0;
    B1:=0; B2:=0; B3:=0; B4:=0; B5:=0; B6:=0; B7:=0; B8:=0; B9:=0;
    DeleteContent:=0;
  end;
{Various}
Form1.Xtimes.Text:='X:'+IntToStr(Xwontimes);
Form1.Otimes.Text:='O:'+IntToStr(Owontimes);
end;

end.

