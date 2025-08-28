pageextension 50101 SalesOrderSubformext extends "Sales Order Subform"
{

    layout
    {
        addafter("Unit Price")
        {
            field("Direct_Cost"; Rec."Direct_Cost")
            {
                ApplicationArea = All;
                ToolTip = 'Direct Cost';
            }
            field("Service Period From"; Rec."Service Period From")
            {
                ApplicationArea = All;
                ToolTip = 'Service Period From';
            }
            field("Service Period To"; Rec."Service Period To")
            {
                ApplicationArea = All;
                ToolTip = 'Service Period To';
            }

        }

    }

    actions
    {
        // Add changes to page actions here
    }

}