program myComBox;

uses
  Forms,
  ComBox in 'ComBox.pas' {Form1},
  PersonInfo in 'PersonInfo.pas' {PersonInfoForm},
  About in 'About.pas' {AboutBox},
  IDAL in 'IDAL.pas',
  Person in 'Person.pas',
  ConfigTools in 'ConfigTools.pas',
  DALPerson in 'DALPerson.pas',
  Database in 'Database.pas' {DataAccess: TDataModule},
  BllPerson in 'BllPerson.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '个人通讯录';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPersonInfoForm, PersonInfoForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TDataAccess, DataAccess);
  Application.Run;
end.









