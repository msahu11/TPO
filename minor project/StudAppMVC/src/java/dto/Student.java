package dto;

public class Student {

private int rno;
private String name;
private float phy,che,mat;

    public Student() {
    }

    public Student(int rno, String name, float phy, float che, float mat) {
        this.rno = rno;
        this.name = name;
        this.phy = phy;
        this.che = che;
        this.mat = mat;
    }

    public int getRno() {
        return rno;
    }

    public void setRno(int rno) {
        this.rno = rno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPhy() {
        return phy;
    }

    public void setPhy(float phy) {
        this.phy = phy;
    }

    public float getChe() {
        return che;
    }

    public void setChe(float che) {
        this.che = che;
    }

    public float getMat() {
        return mat;
    }

    public void setMat(float mat) {
        this.mat = mat;
    }


}
