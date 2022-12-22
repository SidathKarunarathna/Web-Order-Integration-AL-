pageextension 50126 UserSetupExt extends "User Setup"
{
    layout
    {
        addafter(PhoneNo)
        {
            field("Import Web Order Permission "; Rec."Import Web Order Permission ")
            {
                ApplicationArea = All;
                Caption = 'Import Web Order Permission';
            }
            field("Create Web Order Permission"; Rec."Create Web Order Permission")
            {
                ApplicationArea = All;
                Caption = 'Create Web Order Permission';
            }
            field("Web Order Posting Permission"; Rec."Web Order Posting Permission")
            {
                ApplicationArea = All;
                Caption = 'Web Order Posting Permission';
            }

        }
    }


}