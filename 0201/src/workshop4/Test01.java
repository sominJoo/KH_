package workshop4;

public class Test01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int [][] arr2 = {
			{5,5},
			{10,10,10,10,10},
			{20,20,20},
			{30,30,30,30}
		};
		int total =0;
		float avg =0;
		int j =0;
		int i = 0 ;
		for(i = 0 ; i< arr2.length ;i++) {
			for(j =0 ; j<arr2[i].length ; j++) {
				total += arr2[i][j];
			}
		}
		avg = total /(i*j);
		
		System.out.println("total = "+total);
		System.out.println("avg = "+avg);
	}

}
