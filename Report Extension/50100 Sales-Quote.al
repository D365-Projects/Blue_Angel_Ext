reportextension 50100 SalesQuoteSG extends "Devices Sales Quote"
{
    dataset
    {
        add(Line)
        {
            column(UPC_SG; UPC_SG)
            {
            }


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
            LayoutFile = './DevicesQuote.rdl';
        }
    }
}