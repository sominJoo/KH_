package kh.java.collection.list.music.model.vo;

public class Music {
	private String title;
	private String singer;
	@Override
	public String toString() {
		return "[title=" + title + ", singer=" + singer + "]";
	}
	public Music(String title, String singer) {
		super();
		this.title = title;
		this.singer = singer;
	}
	public Music() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	
	
}