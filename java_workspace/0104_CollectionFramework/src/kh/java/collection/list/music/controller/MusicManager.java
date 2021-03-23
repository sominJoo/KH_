package kh.java.collection.list.music.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import kh.java.collection.list.music.model.vo.Music;

public class MusicManager {
	int menuNum;
	private List<Music> mList = new ArrayList<>();{
		mList.add(new Music("비밀정원","오마이걸"));
		mList.add(new Music("종소리","러블리즈"));
		mList.add(new Music("어글리","투애니원"));
		mList.add(new Music("언제라도","정승환"));
		mList.add(new Music("너랑나","아이유"));
	}
	public MusicManager() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MusicManager(int menuNum) {
		super();
		this.menuNum = menuNum;
	}
	public List<Music> selectList(){
		return mList;
	}
	//마지막에 음악추가
	public void addList(Music m) {
		mList.add(m);
	}
	//처음에 음악 추가
	public void addAtZero(Music m) {
		mList.add(0, m);
	}
	
	//특정곡 삭제
	public boolean removeMusic(String s) {
		boolean check =	false;
		
		Iterator<Music> iterator = mList.iterator();
		while(iterator.hasNext()) {
		   Music next = iterator.next();
		   if(next.getTitle().equals(s)) {
		       iterator.remove();
		       check = true;
		   }
		}
		if(check)
			return true;
		return false;
	}
	
	public boolean replaceMusic(Music oldMusic, Music newMusic) {
		//1.리스트를 열람후 곡을 찾음
		for(int i=0; i<mList.size(); i++) {
			//3.해당곡이 있을 경우 새로운 music객체(사용자 입력)
			if(oldMusic.equals(mList.get(i))) {
				//대체
				mList.set(i, newMusic);
				return true;
			}
		}
		
		//4.해당곡이 없을 경우;
		return false;
	}
	
	
	public List<Music> searchMusicByTitle(String title){
		List<Music> searchList = new ArrayList<Music>();
		for(int i=0; i<mList.size() ; i++) {
			//contains 사용
			if(mList.get(i).getTitle().contains(title)) 
				
				searchList.add(mList.get(i));
		}
		return searchList;
		
	}
	public List<Music> searchMusicBySinger(String singer){
		List<Music> searchList = new ArrayList<>();
		
		//1.리스트 순회 
		for(int i=0; i<mList.size(); i++) {
			//2.해당가수의 곡이 있을경우 출력
			if(mList.get(i).getSinger().contains(singer)) {	
				searchList.add(mList.get(i));				
			}
		}
		
		return searchList;
		
	}
}
