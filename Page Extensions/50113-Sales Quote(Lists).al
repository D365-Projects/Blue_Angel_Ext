pageextension 50113 "Sales Quotes" extends "Sales Quotes"
{
    layout
    {
        addafter(Status)
        {
            field("Quote Status"; Rec."Quote Status")
            {
                ApplicationArea = All;
                Caption = 'Quote Status';
                ToolTip = 'Status of the Sales Quote';
                ShowMandatory = true;
            }
            field("Follow Up Date"; Rec."Follow Up Date")
            {
                ApplicationArea = All;
                Caption = 'Follow Up Date';
                ToolTip = 'Date to follow up Sales Quote';
                ShowMandatory = true;
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