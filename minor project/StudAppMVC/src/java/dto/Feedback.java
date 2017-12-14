package dto;

public class Feedback {

private String unm,feed,reply;

    public Feedback() {
    }

    public Feedback(String unm, String feed, String reply) {
        this.unm = unm;
        this.feed = feed;
        this.reply = reply;
    }

    public Feedback(String unm, String feed) {
        this.unm = unm;
        this.feed = feed;
    }

    public String getUnm() {
        return unm;
    }

    public void setUnm(String unm) {
        this.unm = unm;
    }

    public String getFeed() {
        return feed;
    }

    public void setFeed(String feed) {
        this.feed = feed;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }
    

}