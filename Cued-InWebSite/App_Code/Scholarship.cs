using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Scholarship
{
    private String name;
    private String fundingOrg;
    private String recipients;
    private Double amount;
    private String city;
    private String street;
    private String state;
    private String county;
    private String zip;
    private String school;
    private DateTime deadline;
    private String link;
    private String description;

    public Scholarship(String sName, String sFundingOrg, String sRecipients, Double sAmount, String sCity, String sStreet, String sState, String sCounty, String sZip, String sSchool, DateTime sDeadline, String sLink, String sDescription)
    {
        setName(sName);
        setFundingOrg(sFundingOrg);
        setRecipients(sRecipients);
        setAmount(sAmount);
        setCity(sCity);
        setStreet(sStreet);
        setState(sState);
        setCounty(sCounty);
        setZip(sZip);
        setSchool(sSchool);
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
        this.name = sFundingOrg;
    }

    public String getFundingOrg()
    {
        return this.fundingOrg;
    }

    public void setRecipients(String sRecipients)
    {
        this.name = sRecipients;
    }

    public String getRecipients()
    {
        return this.recipients;
    }

    public void setAmount(Double sAmount)
    {
        this.amount = sAmount;
    }

    public Double getAmount()
    {
        return this.amount;
    }

    public void setCity(String eCity)
    {
        this.city = eCity;
    }

    public String getCity()
    {
        return this.city;
    }

    public void setStreet(String eStreet)
    {
        this.street = eStreet;
    }

    public String getStreet()
    {
        return this.street;
    }

    public void setState(String eState)
    {
        this.state = eState;
    }

    public String getState()
    {
        return this.state;
    }

    public void setCounty(String eCounty)
    {
        this.county = eCounty;
    }

    public String getCounty()
    {
        return this.county;
    }

    public void setZip(String eZip)
    {
        this.zip = eZip;
    }

    public String getZip()
    {
        return this.zip;
    }

    public void setSchool(String sSchool)
    {
        this.school = sSchool;
    }

    public String getSchool()
    {
        return this.school;
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