pageextension 50134 CompanyInfoPageExt extends "Company Information"
{
    layout
    {
        addafter(GLN){
            field("Company Registration No.";Rec."Company Registration No."){
                ApplicationArea=All;
                Caption='Company Registration No.';
            }
        }
        addafter("E-Mail"){
            field("Company Website";Rec."Company Website"){
                ApplicationArea=All;
                Caption='Company Website.';
            }
        }
    }
    
}