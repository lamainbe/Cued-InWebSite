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
    private String jobType;
    private String cluster;
    private String occupation;
    private DateTime deadline;
    private String link;
    private String description;

    public Job(String jobName, String jobType, String cluster, String occupation, DateTime deadline,
        String link, String description)
    {
        setjobName(jobName);
        setJobType(jobType);
        setCluster(cluster);
        setOccupation(occupation);
        setDeadline(deadline);
        setLink(link);
        setDescription(description);

    }

    public void setjobName(String jobName)
    {
        this.jobName = jobName;
    }
    public String getjobName()
    {
        return this.jobName;
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
    public String getDeadline()
    {
        return this.deadline.ToShortDateString();
    }

}