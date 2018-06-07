import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args){
        String check = "^([a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$)";
        Pattern regex = Pattern.compile(check);
        Matcher matcher = regex.matcher("550850@qqco.m.k");
        System.out.println(matcher.matches());
    }
}
