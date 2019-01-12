unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, ADODB, TeEngine, Series,
  TeeProcs, Chart, DbChart, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1numberofticket: TAutoIncField;
    ADOTable1leclient: TWideStringField;
    ADOTable1letypedemarchandise: TWideStringField;
    ADOTable1laquantite: TIntegerField;
    ADOTable1telephone: TIntegerField;
    ADOTable1leprix: TBCDField;
    ADOTable1date: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button5: TButton;
    Edit3: TEdit;
    DBChart1: TDBChart;
    Label8: TLabel;
    PrintDialog1: TPrintDialog;
    Button6: TButton;
    Series1: TFastLineSeries;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);

begin
edit3.Text:=FormatDateTime('mm ',Now) ;
 end;
procedure TForm1.Button1Click(Sender: TObject);
begin
adotable1.Insert;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
adotable1.Delete;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
edit1.Visible:=true ;
button3.Visible:=true ;
edit2.Visible:=false;
button4.Visible:=false;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
 edit2.Visible:=true ;
button4.Visible:=true ;
edit1.Visible:=false;
button3.Visible:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
adotable1.Locate('le client',edit1.Text,[]) ;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
adotable1.Locate('number of ticket',edit2.Text,[]) ;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
dbedit7.Text:=edit3.Text;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if PrintDialog1.Execute then
    dbchart1.Print;
end;




end.
