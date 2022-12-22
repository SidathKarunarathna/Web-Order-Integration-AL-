pageextension 50137 PurchaseReciptExt extends "Posted Purchase Invoice"
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