pageextension 50108 JobCardExtension extends "Job Card"
{
    layout
    {
        addafter("No. of Archived Versions")
        {
            field("SG ShortcutDim6Code"; Rec."SG ShortcutDim6Code")
            {
                ApplicationArea = All;
                Caption = 'Shortcut Dimension 6 Code';
                ToolTip = 'Shortcut Dimension 6 Code for the Job';
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