reportextension 50103 SalesQuotePricingSheetSG extends "Pricing Sheet Sales Quote"
{
    dataset
    {
        add(Line)
        {


        }
        // Add changes to dataitems and columns here
    }

    requestpage
    {
        // Add changes to the requestpage here
    }

    rendering
    {
        layout("Devices Sales Quote")
        {
            Type = RDLC;
            LayoutFile = './PricingSheet.rdl';
        }
    }
}