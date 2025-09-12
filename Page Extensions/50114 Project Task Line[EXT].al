pageextension 50114 JobtaskLinesExtension extends "Job Task Lines"
{
    layout
    {
        addafter("Global Dimension 2 Code")
        {
            field("SG ShortcutDim6Code"; Rec."SG ShortcutDim6Code")
            {
                ApplicationArea = All;
                Caption = 'Shortcut Dimension 6 Code';
                ToolTip = 'Shortcut Dimension 6 Code for the Job';
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