package com.multi.api;

public class Movie2VO {
	private int movie_id;
	private String title;
	private String img;
	private String genre;
	private String running_time;
	private String link;

	public int getMovie_id() {
		return movie_id;
	}

	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getRunning_time() {
		return running_time;
	}

	public void setRunning_time(String running_time) {
		this.running_time = running_time;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	@Override
	public String toString() {
		return "Movie2VO [movie_id=" + movie_id + ", title=" + title + ", img=" + img + ", genre=" + genre
				+ ", running_time=" + running_time + ", link=" + link + "]";
	}

}
