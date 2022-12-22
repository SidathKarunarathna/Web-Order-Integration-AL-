report 50139 PurchaseInvoice
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Purchase Invoice';
    RDLCLayout = './layouts/PurchaseInvoiceConf.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.";
            column(No_; "No.")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {

            }
            column(Buy_from_Address; "Buy-from Address")
            {

            }
            column(Buy_from_Contact_No_; "Buy-from Contact No.")
            {

            }
            column(ComName; ComInfo.Name)
            {

            }
            column(ComAddress; ComInfo.Address)
            {

            }
            column(ComPhone; ComInfo."Phone No.")
            {

            }
            column(ComEmail; ComInfo."E-Mail")
            {

            }
            column(ComRegNo; ComInfo."Company Registration No.")
            {

            }
            column(ComWebSite; ComInfo."Company Website")
            {

            }
            column(Expense_Type; "Expense Type")
            {

            }
            column(Vendor_Invoice_No_; "Vendor Invoice No.")
            {

            }
            column(Payment_Terms_Code; "Payment Terms Code")
            {

            }
            column(Due_Date; "Due Date")
            {

            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document No." = field("no."), "Document Type" = field("Document Type");
                DataItemLinkReference = "Purchase Header";

                column(No; "No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Unit_of_Measure; "Unit of Measure")
                {

                }
                column(Direct_Unit_Cost; "Direct Unit Cost")
                {

                }
                column(Amount_Including_VAT; "Amount Including VAT")
                {

                }
                
                column(Inv__Discount_Amount; "Inv. Discount Amount")
                {

                }

            }
        }

    }




    var
        ComInfo: Record "Company Information";
}