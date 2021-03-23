package ncs.test1;

//문제1
public class ArrayTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[][] array = {
				{12, 41, 36, 56, 21}, 
				{82, 10, 12, 61, 45}, 
				{14, 16, 18, 78, 65}, 
				{45, 26, 72, 23, 34}};
		
	double sum=0;
	double avg =0;
	for(int i =0 ; i< array.length; i++) {
		for(int j =0; j<array[i].length; j++) {
			sum +=array[i][j];
		}
		avg = sum/(array.length*array[i].length);
	}
	System.out.printf("합계 : %.2f\n",sum); 
	
	System.out.println("평균 : "+avg); 
	
	}

}
