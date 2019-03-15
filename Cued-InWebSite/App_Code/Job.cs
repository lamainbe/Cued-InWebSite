using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Job
/// </summary>
public class Job
{
    private String jobName;
    private String street;
    private String city;
    private String state;
    private String county;
    private String zip;
    private String school;
    private String jobType;
    private String cluster;
    private String occupation;
    private DateTime deadline;
    private String link;
    private String description;
    public static String[] countyArray = new String[100];
    public static String[] schoolArray = new String[100];

    public Job(String jobName, String street, String city, String state, String county, String zip, String school, String jobType, String cluster, String occupation, DateTime deadline,
        String link, String description)
    {
        setjobName(jobName);
        setStreet(street);
        setCity(city);
        setState(state);
        setCounty(county);
        setZip(zip);
        setSchool(school);
        setJobType(jobType);
        setCluster(cluster);
        setOccupation(occupation);
        setDeadline(deadline);

    }

    public void setjobName(String jobName)
    {
        this.jobName = jobName;
    }
    public String getjobName()
    {
        return this.jobName;
    }
    public void setStreet(String street)
    {
        this.street = street;
    }
    public String getStreet()
    {
        return this.street;
    }
    public void setCity(String city)
    {
        this.city = city;
    }
    public String getCity()
    {
        return this.city;
    }
    public void setState(String state)
    {
        this.state = state;
    }
    public String getState()
    {
        return this.state;
    }
    public void setCounty(String county)
    {
        this.county = county;
    }
    public String getCounty()
    {
        return this.county;
    }
    public void setZip(String zip)
    {
        this.zip = zip;
    }
    public String getZip()
    {
        return this.zip;
    }
    public void setSchool(String school)
    {
        this.school = school;
    }
    public String getSchool()
    {
        return this.school;
    }
    public void setJobType(String jobType)
    {
        this.jobType = jobType;
    }
    public String getJobType()
    {
        return this.jobType;
    }
    public void setCluster(String cluster)
    {
        this.cluster = cluster;
    }
    public String getCluster()
    {
        return this.cluster;
    }
    public void setOccupation(String occupation)
    {
        this.occupation = occupation;
    }
    public String getOccupation()
    {
        return this.occupation;
    }
    public void setLink(String link)
    {
        this.link = link;
    }
    public String getLink()
    {
        return this.link;
    }
    public void setDescription(String description)
    {
        this.description = description;
    }
    public String getDescription()
    {
        return this.description;
    }
    public void setDeadline(DateTime deadline)
    {
        this.deadline = deadline;
    }
    public DateTime getDeadline()
    {
        return this.deadline;
    }

}