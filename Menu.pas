unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SMDBCtrl, Grids, DBGrids, SMDBGrid;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    SMDBGrid4: TSMDBGrid;
    SMDBNavigator1: TSMDBNavigator;
    SMDBNavigator2: TSMDBNavigator;
    SMDBNavigator3: TSMDBNavigator;
    SMDBNavigator4: TSMDBNavigator;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

end.
