xmlport 50141 "Export web orders"
{
    Caption = 'Export web orders';
    Format=VariableText;
    Direction=Import;
    UseRequestPage=false;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(WebOrder; WebOrder)
            {
                fieldelement(DocumentType; WebOrder."Document Type")
                {
                }
                fieldelement(DocumentNo; WebOrder."Document No.")
                {
                }
                fieldelement(LineNo; WebOrder."Line No.")
                {
                }
                fieldelement(LocationCode; WebOrder."Location Code")
                {
                }
                fieldelement(DocumentDate; WebOrder."Document Date")
                {
                }
                fieldelement(CustomerNo; WebOrder."Customer No.")
                {
                }
                fieldelement(ItemNo; WebOrder."Item No.")
                {
                }
                fieldelement(Description; WebOrder.Description)
                {
                }
                fieldelement(Qty; WebOrder.Qty)
                {
                }
                fieldelement(UnitPrice; WebOrder."Unit Price")
                {
                }
                fieldelement(DiscountAmount; WebOrder."Discount Amount")
                {
                }
                fieldelement(Amount; WebOrder.Amount)
                {
                }

                trigger OnBeforeInsertRecord()
                var
                    myInt: Integer;
                begin
                    if WebOrder.get(WebOrder."Document Type",WebOrder."Document No.",WebOrder."Line No.") then
                    begin
                        currXMLport.Skip();
                    end
                    else begin
                        WebOrder."Imported Date":=Today;
                        WebOrder."Imported Time":=Time;
                        WebOrder."Imported User":= UserId;
                    end;
                            
                end;
            }
        }
    }
   
    
}
