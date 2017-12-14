package dto;

public class Recruiter {

private String name,branch,link,doa;

    public Recruiter(String name, String branch, String link, String doa) {
        this.name = name;
        this.branch = branch;
        this.link = link;
        this.doa = doa;
    }
    
    public Recruiter() {
     
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getDoa() {
        return doa;
    }

    public void setDoa(String doa) {
        this.doa = doa;
    }

    
    }
