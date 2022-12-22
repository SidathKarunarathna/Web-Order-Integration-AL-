pageextension 50142 PurchaseOrderExt extends "Purchase Order"
{
    layout
    {
        addafter("Quote No.")
        {
            field("Expense Type"; Rec."Expense Type")
            {
                ApplicationArea = All;
                Caption = 'Expense Type';
            }

        }
    }
}