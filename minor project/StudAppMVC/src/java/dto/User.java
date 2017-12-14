package dto;

public class User {

private String unm,upass,email,cont,name,branch,year,dob,gen,role;

    public User(String unm, String upass, String email, String cont, String name, String branch, String year, String dob, String gen,String role) {
        this.unm = unm;
        this.upass = upass;
        this.email = email;
        this.cont = cont;
        this.name = name;
        this.branch = branch;
        this.year = year;
        this.dob = dob;
        this.gen = gen;
        this.role=role;
    }

    public User() {
     
    }

    public String getUnm() {
        return unm;
    }

    public void setUnm(String unm) {
        this.unm = unm;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCont() {
        return cont;
    }

    public void setCont(String cont) {
        this.cont = cont;
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

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGen() {
        return gen;
    }

    public void setGen(String gen) {
        this.gen = gen;
    }

    


}
