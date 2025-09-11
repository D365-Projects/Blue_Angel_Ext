reportextension 50102 TimesandMeterial_SG extends "Standard Sales - Quote"
{

    dataset
    {
        add(Line)
        {
            column(SKU; SKU)
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

        layout("T&M Sales Quote")
        {
            Type = RDLC;
            LayoutFile = 'Sales Quote(T&M).rdl';

        }
    }
}