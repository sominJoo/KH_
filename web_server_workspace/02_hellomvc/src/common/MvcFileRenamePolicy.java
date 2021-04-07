package common;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MvcFileRenamePolicy implements FileRenamePolicy {

	/**
	 * 벚꽃.jpg -> 765757657_919.jpg
	 */
	@Override
	public File rename(File f) {
		File newFile = null;
		do {
			//새파일 생성
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSSS_");
			DecimalFormat df = new DecimalFormat("000");
			
			
			//확장자 구하기
			String oldName = f.getName();
			String ext ="";
			int dot = oldName.lastIndexOf(".");
			if(dot> -1) ext = oldName.substring(dot);
			
			
			String newName = sdf.format(new Date())
							+ df.format(Math.random() *999)
							+ ext;
			
			newFile = new File(f.getParent(), newName); //부모경로
		}while(!createNewFile(newFile));
		
		return newFile;
	}
	/**
	 * f.createNewFile();
	 *  f.가 존재하면 파일 생성 x IO Exception으로 던짐
	 *  f가 존재하지 않므연 파일 생성 후 true 리턴
	 * @param f
	 * @return
	 */
	private boolean createNewFile(File f) {
		try {
			return f.createNewFile();
		} catch (IOException ignored) {
			return false;
		}
	}
}
