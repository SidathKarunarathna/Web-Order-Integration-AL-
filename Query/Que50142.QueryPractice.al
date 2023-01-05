query 50142 "Query Practice"
{
    Caption = 'Query Practice';
    QueryType = Normal;
    
    
    elements
    {
        dataitem(Purchase_Header;"Purchase Header")
        {
            column(No_;"No.")
            {
                
            }
            column(Document_Type;"Document Type")
            {

            }
            column(Buy_from_Vendor_Name;"Buy-from Vendor Name")
            {
                
            }
            dataitem(Purchase_Line;"Purchase Line")
            {
                DataItemLink = "Document No." = Purchase_Header."No.",  "Document Type" = Purchase_Header."Document Type";
                SqlJoinType = InnerJoin;
                column(Description;Description)
                {
                    
                }
            }
        }
    }
    
    trigger OnBeforeOpen()
    begin
    
    end;
}
