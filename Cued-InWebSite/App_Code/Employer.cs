using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Employer
/// </summary>
public class Employer
{
    private String businessName;
    private String contactFirstName;
    private String contactLastName;
    private String email;
    private String phone;
    private String street;
    private String city;
    private String state;
    private String county;
    private String zip;
    private String websiteLink;
    private String businessDescription;
    private String cultureDescription;

    public Employer(String businessName, String contactFirstName, String contactLastName,
        String email, String phone, String street, String city,
        String state, String county, String zip, String websiteLink,
        String businessDescription, String cultureDescription)
    {
        setBusinessName(businessName);
        setContactFirstName(contactFirstName);
        setContactLastName(contactLastName);
        setEmail(email);
        setPhone(phone);
        setStreet(street);
        setCity(city);
        setState(state);
        setCounty(county);
        setZip(zip);
        setWebsiteLink(websiteLink);
        setBusinessDescription(businessDescription);
        setCultureDescription(cultureDescription);
    }
    //Getters
    public String getBusinessName()
    {
        return this.businessName;
    }
    public String getContactFirstName()
    {
        return this.contactFirstName;
    }
    public String getContactLastName()
    {
        return this.contactLastName;
    }
    public String getEmail()
    {
        return this.email;
    }
    public String getPhone()
    {
        return this.phone;
    }
    public String getStreet()
    {
        return this.street;
    }
    public String getCity()
    {
        return this.city;
    }
    public String getState()
    {
        return this.state;
    }
    public String getCounty()
    {
        return this.county;
    }
    public String getZip()
    {
        return this.zip;
    }
    public String getWebsiteLink()
    {
        return this.websiteLink;
    }
    public String getBusinessDescription()
    {
        return this.businessDescription;
    }
    public String getCultureDescription()
    {
        return this.cultureDescription;
    }
    //Setters
    public void setBusinessName(String businessName)
    {
        this.businessName = businessName;
    }
    public void setContactFirstName(String contactFirstName)
    {
        this.contactFirstName = contactFirstName;
    }
    public void setContactLastName(String contactLastName)
    {
        this.contactLastName = contactLastName;
    }
    public void setEmail(String email)
    {
        this.email = email;
    }
    public void setPhone(String phone)
    {
        this.phone = phone;
    }
    public void setStreet(String street)
    {
        this.street = street;
    }
    public void setCity(String city)
    {
        this.city = city;
    }
    public void setState(String state)
    {
        this.state = state;
    }
    public void setCounty(String county)
    {
        this.county = county;
    }
    public void setZip(String zip)
    {
        this.zip = zip;
    }
    public void setWebsiteLink(String websiteLink)
    {
        this.websiteLink = websiteLink;
    }
    public void setBusinessDescription(String businessDescription)
    {
        this.businessDescription = businessDescription;
    }
    public void setCultureDescription(String cultureDescription)
    {
        this.cultureDescription = cultureDescription;
    }
}