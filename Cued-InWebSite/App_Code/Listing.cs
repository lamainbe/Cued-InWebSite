using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Listing
/// </summary>
public class Listing
{
    private String listingName;
    private String typeOfListing;
    private String street;
    private String city;
    private String state;
    private String county;
    private String zip;
    private String school;
    private DateTime datePosted;
    private String status;


    public Listing(String ListingName, String TypeOfListing,
    String street, String city, String state, String county, String zip, String school,
    DateTime datePosted, String status)
    {
        setListingName(listingName);
        setTypeOfListing(typeOfListing);
        setStreet(street);
        setCity(city);
        setState(state);
        setCounty(county);
        setZip(zip);
        setSchool(school);
        setDatePosted(datePosted);
        setStatus(status);
    }

    // getter and setter method for listingName
    public void setListingName(string listingName)
    {
        this.listingName = listingName;
    }
    public string getListingName()
    {
        return this.listingName;
    }

    // getter and setter method for typeOfListing
    public void setTypeOfListing(string typeOfListing)
    {
        this.typeOfListing = typeOfListing;
    }
    public string getTypeOfListing()
    {
        return this.typeOfListing;
    }

    // getter and setter method for street
    public void setStreet(String street)
    {
        this.street = street;
    }
    public String getStreet()
    {
        return this.street;
    }

    // getter and setter method for city
    public void setCity(String city)
    {
        this.city = city;
    }
    public String getCity()
    {
        return this.city;
    }

    // getter and setter method for state
    public void setState(String state)
    {
        this.state = state;
    }
    public String getState()
    {
        return this.state;
    }

    // getter and setter method for county
    public void setCounty(String county)
    {
        this.county = county;
    }
    public String getCounty()
    {
        return this.county;
    }

    // getter and setter method for zip
    public void setZip(String zip)
    {
        this.zip = zip;
    }
    public String getZip()
    {
        return this.zip;
    }

    // getter and setter method for school
    public void setSchool(String school)
    {
        this.school = school;
    }
    public String getSchool()
    {
        return this.school;
    }

    // getter and setter method for datePosted
    public void setDatePosted(DateTime datePosted)
    {
        this.datePosted = datePosted;
    }
    public DateTime getDatePosted()
    {
        return this.datePosted;
    }

    // getter and setter method for status
    public void setStatus(String status)
    {
        this.status = status;
    }
    public String getStatus()
    {
        return this.status;
    }
}