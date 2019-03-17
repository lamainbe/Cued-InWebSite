using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Event
{
    private String name;
    private String type;
    private String affiliatedSchool;
    private DateTime date;
    private DateTime time;
    private String description;

    public Event(String eName, String eType, String eAffiliated, DateTime eDate, DateTime eTime, String eDescription)
    {
        setName(eName);
        setType(eType);
        setAffiliatedSchool(eAffiliated);
        setDate(eDate);
        setTime(eTime);
        setDescription(eDescription);
    }

    public void setName (String eName)
    {
        this.name = eName;
    }

    public String getName()
    {
        return this.name;
    }

    public void setType(String eType)
    {
        this.type = eType;
    }

    public string getType()
    {
        return this.type;
    }

    public void setAffiliatedSchool(String eAffiliated)
    {
        this.affiliatedSchool = eAffiliated;
    }

    public String getAffiliatedSchool()
    {
        return this.affiliatedSchool;
    }

    public void setDate(DateTime eDate)
    {
        this.date = eDate;
    }

    public DateTime getDate()
    {
        return this.date;
    }

    public void setTime(DateTime eTime)
    {
        this.time = eTime;
    }

    public DateTime getTime()
    {
        return this.time;
    }

    public void setDescription(String eDescription)
    {
        this.description = eDescription;
    }

    public String getDescription()
    {
        return this.description;
    }
}