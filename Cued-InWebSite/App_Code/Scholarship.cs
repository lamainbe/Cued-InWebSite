using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Scholarship
{
    private String name;
    private String fundingOrg;
    private int recipients;
    private int amount;
    private DateTime deadline;
    private String link;
    private String description;

    public Scholarship(String sName, String sFundingOrg, int sRecipients, int sAmount, DateTime sDeadline, String sLink, String sDescription)
    {
        setName(sName);
        setFundingOrg(sFundingOrg);
        setRecipients(sRecipients);
        setAmount(sAmount);
        setDeadline(sDeadline);
        setLink(sLink);
        setDescription(sDescription);
    }

    public void setName(String sName)
    {
        this.name = sName;
    }

    public String getName()
    {
        return this.name;
    }

    public void setFundingOrg(String sFundingOrg)
    {
        this.fundingOrg = sFundingOrg;
    }

    public String getFundingOrg()
    {
        return this.fundingOrg;
    }

    public void setRecipients(int sRecipients)
    {
        this.recipients = sRecipients;
    }

    public int getRecipients()
    {
        return this.recipients;
    }

    public void setAmount(int sAmount)
    {
        this.amount = sAmount;
    }

    public int getAmount()
    {
        return this.amount;
    }

    public void setDeadline(DateTime sDeadline)
    {
        this.deadline = sDeadline;
    }

    public DateTime getDeadline()
    {
        return this.deadline;
    }

    public void setLink(String sLink)
    {
        this.link = sLink;
    }

    public String getLink()
    {
        return this.link;
    }

    public void setDescription(String sDescription)
    {
        this.description = sDescription;
    }

    public String getDescription()
    {
        return this.description;
    }
}