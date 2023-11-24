unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, Vcl.StdCtrls, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope,Xml.XMLDoc,Xml.XMLIntf,
  Vcl.ExtCtrls,Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelUpload: TLabel;
    LabelTemp: TLabel;
    LabelWind: TLabel;
    Image1: TImage;
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ComboBox1Change(Sender: TObject);
  var
  xmlDoc:IXMLDocument;
  conditionElement,rootElement, currentElement:IXMLNode;
   iconURL: string;
  
begin
   
  RESTClient1.Params.ParameterByName('q').Value:=ComboBox1.Items[ComboBox1.ItemIndex];
  RESTRequest1.Execute;

   ;
    try
       xmlDoc:=TXMLDocument.Create(nil);

       xmlDoc.LoadFromXML(RESTResponse1.Content);

       Memo1.Lines.Text:=FormatXMLData(xmlDoc.XML.Text);

       rootElement:=xmlDoc.DocumentElement;

       currentElement:=rootElement.ChildNodes['current'];

       LabelUpload.Caption:=currentElement.ChildNodes['last_updated'].Text;

       LabelTemp.Caption:=currentElement.ChildNodes['temp_c'].Text+'°C';

       LabelWind.Caption:=currentElement.ChildNodes['wind_kph'].Text+'kph';

       
    finally
         xmlDoc:=nil;
    end;
    
        
end;


end.
