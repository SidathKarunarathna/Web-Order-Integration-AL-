tableextension 50136 UserSetupExt extends "User Setup"
{
    fields
    {
        field(50100; "Import Web Order Permission "; Boolean)
        {
            Caption = 'Import Web Order Permission ';
            DataClassification = ToBeClassified;
        }
        field(50101; "Create Web Order Permission"; Boolean)
        {
            Caption = 'Create Web Order Permission';
            DataClassification = ToBeClassified;
        }
        field(50102; "Web Order Posting Permission"; Boolean)
        {
            Caption = 'Web Order Posting Permission';
            DataClassification = ToBeClassified;
        }
        
    }
}
