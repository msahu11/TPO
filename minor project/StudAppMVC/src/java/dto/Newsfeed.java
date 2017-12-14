/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author abc
 */
public class Newsfeed {
    
    
    


private String news,image;

    public Newsfeed() {
    }



    public Newsfeed(String news, String image) {
        this.news = news;
        this.image = image;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    
}
