program Project2;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  UPayment in 'model\UPayment.pas',
  UMoney in 'model\UMoney.pas',
  UitemID in 'model\UitemID.pas',
  UProductCatalog in 'model\UProductCatalog.pas',
  UProductDescription in 'model\UProductDescription.pas',
  URegister in 'model\URegister.pas',
  USale in 'model\USale.pas',
  USalesLineItem in 'model\USalesLineItem.pas',
  UDate in 'model\UDate.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
