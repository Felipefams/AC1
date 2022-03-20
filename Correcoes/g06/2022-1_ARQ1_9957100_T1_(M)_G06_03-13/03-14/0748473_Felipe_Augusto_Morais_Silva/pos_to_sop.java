import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class pos_to_sop{
    /**
     * programa pra trocar os . por + pra quando for MAXTERMO e nao MINITERMO
     * acabou nao dando tempo de fazer, mas vou escrever um pra fazer os testes automaticos em verilog...
     * @param args
     * @throws IOException
     */
    public static void main(String[] args) throws IOException{
        Path filename = Path.of("guia0602.txt");
        String strfile = Files.readString(filename);
        StringBuilder sb = new StringBuilder(strfile);
        for(int i = 0; i < sb.length(); i++){
            if(sb.charAt(i) == '.'){
                sb.setCharAt(i, '+');
            }else if(sb.charAt(i) == '+'){
                sb.setCharAt(i, '.');
            }
        }
        Files.writeString(filename, sb.toString()); 
    }
}
