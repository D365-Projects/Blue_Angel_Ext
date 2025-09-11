pageextension 50112 "Posted Sales Invoice" extends "Posted Sales Invoice Subform"
{
    layout
    {
        modify("Description 2")
        {
            Visible = true;
            Caption = 'Notes';
        }
        addafter(Description)
        {
            field("SKU"; Rec."SKU")
            {
                ApplicationArea = All;
            }
            field("UPC_SG"; Rec."UPC_SG")
            {
                ApplicationArea = All;
            }
            field("Shipping Cost"; Rec."Shipping Cost")
            {
                ApplicationArea = All;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}