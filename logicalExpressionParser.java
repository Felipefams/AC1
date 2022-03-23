import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import entities.Arq;
public class logicalExpressionParser{
	/* Example code in verilog 

module f ( output s,input x,input y, input z );
assign s =(~(~x | ~y) & ~(x & y)) | ( ~((y & z) | ~x));
endmodule // f5a
module test_f5;
reg x;
reg y;
reg z;
wire a;
f5a modulo ( a, x, y, z);
initial
begin : main
$display("Test module");
$display("   x    y    z =   r1   r2");
$monitor("%4b %4b %4b = %4b ", x, y, z, a);
#1 x=1'b0; y=1'b0; z=1'b0;
#1 x=1'b0; y=1'b0; z=1'b1;
#1 x=1'b0; y=1'b1; z=1'b0;
#1 x=1'b0; y=1'b1; z=1'b1;
#1 x=1'b1; y=1'b0; z=1'b0;
#1 x=1'b1; y=1'b0; z=1'b1;
#1 x=1'b1; y=1'b1; z=1'b0;
#1 x=1'b1; y=1'b1; z=1'b1;
end
endmodule // test_f5
*/
	/*
	 * if the values on the logical expression 
	 * are letters, count as 1+ variable, by doing
	 * that we can allow the user to choose the amount of
	 * variables he want without the need to inform it.
	 * */
	public static List<Character> countVariables(String s){
		List<Character> list = new ArrayList<Character>();
		for(int i = 0; i < s.length(); i++){
			if(Character.isLetter(s.charAt(i))){
				if(!list.contains(s.charAt(i))){
					list.add(s.charAt(i));
				}
			}
		}
		return list;
	}
	/*generate the module part, considering the amount of	
	 *variables the user wants 
	 * */
	public static String makeModule(String module, List list<Character>, int n){
		//yet to write
		if(n > 0){	
			char c = 122;
       	 	String s = module + ", input " + (char)(c-n);
			return makeModule(s, n - 1);
		}
        return module;
	}
	public static String makeReg(String reg, int n){
		if(n > 0){
			char c = 122;
			String s = reg + (char)(c-n) + ";\n"; 
			return makeReg(s, n - 1);
		}
		return reg;
	}


   public static void main(String[] args){
	   //reading the logical expression
	   FastReader fr = new FastReader();
	   List<Character> list = new ArrayList<Character>();
	   System.out.println("logical expression: ");
	   String expr = fr.nextLine();
	   //counting the amount of variables
	   list = countVariables(expr);
	   int variables = list.size();
	   System.out.println(variables);
	   //module name
	   String module = "module f ( output s ";
	   String module_done = module + makeModule(module, variables) + ");";
	   String reg = "reg ";
	   String reg_done = reg + makeReg(reg, variables); 
	   System.out.println(reg_done);
   }

   //class for I/O reading
    static class FastReader {
        // BufferedReader br;
        StringTokenizer st;
        private static BufferedReader br = new BufferedReader(
                new InputStreamReader(System.in, StandardCharsets.ISO_8859_1));

        public static void setCharset(String charset_) {
            br = new BufferedReader(new InputStreamReader(System.in, Charset.forName(charset_)));
        }

        public FastReader() {
            br = new BufferedReader(
                    new InputStreamReader(System.in));
        }

        String next() {
            while (st == null || !st.hasMoreElements()) {
                try {
                    st = new StringTokenizer(br.readLine());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return st.nextToken();
        }

        int nextInt() {
            return Integer.parseInt(next());
        }

        long nextLong() {
            return Long.parseLong(next());
        }

        double nextDouble() {
            return Double.parseDouble(next());
        }

        String nextLine() {
            String str = "";
            try {
                str = br.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            return str;
        }
    }
}

